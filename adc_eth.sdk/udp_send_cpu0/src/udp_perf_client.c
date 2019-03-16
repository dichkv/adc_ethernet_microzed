/******************************************************************************
*
* Copyright (C) 2017 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/* Connection handle for a UDP Client session */

#include "udp_perf_client.h"

extern struct netif server_netif;
static struct udp_pcb *pcb[NUM_OF_PARALLEL_CLIENTS];
static struct udp_pcb *pcb_rev;

static volatile uint8_t  pingpong;

#define FINISH	1
/* Report interval time in ms */
#define REPORT_INTERVAL_TIME (INTERIM_REPORT_INTERVAL * 1000)
/* End time in ms */
#define END_TIME (UDP_TIME_INTERVAL * 1000)

static XSpi  SpiInstance;	 /* The instance of the SPI device */

int Spi_Initialize(XSpi *SpiInstancePtr);
u8 XSpi_Transfer8bits(XSpi *SpiInstancePtr, u8 SendBuf);


int Spi_Initialize(XSpi *SpiInstancePtr)
{
	int Status;
	XSpi_Config *ConfigPtr;	/* Pointer to Configuration data */

	ConfigPtr = XSpi_LookupConfig(XPAR_SPI_0_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_DEVICE_NOT_FOUND;
	}

	Status = XSpi_CfgInitialize(SpiInstancePtr, ConfigPtr, ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the Spi device as a master mode.
	 */
	Status = XSpi_SetOptions(SpiInstancePtr, 	XSP_MASTER_OPTION |
												XSP_CLK_ACTIVE_LOW_OPTION | XSP_CLK_PHASE_1_OPTION |
												XSP_MANUAL_SSELECT_OPTION );
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Disable intrrupt for polling mode */
	XSpi_IntrGlobalDisable(SpiInstancePtr);
	XSpi_IntrDisable(SpiInstancePtr, XSP_INTR_TX_EMPTY_MASK);

	XSpi_Start(SpiInstancePtr);

	return Status;
}


/* XSpi transfer 1byte data */
u8 XSpi_Transfer8bits(XSpi *SpiInstancePtr, u8 SendBuf)
{
	u32 ControlReg;
	u32 StatusReg;
	u8 rev_buf;
	/*
	 * Fill the DTR/FIFO with as many bytes as it will take (or as many as
	 * we have to send). We use the tx full status bit to know if the device
	 * can take more data. By doing this, the driver does not need to know
	 * the size of the FIFO or that there even is a FIFO. The downside is
	 * that the status register must be read each loop iteration.
	 */

	XSpi_WriteReg(SpiInstancePtr->BaseAddr, XSP_DTR_OFFSET, SendBuf);

	/*
	 * Set the slave select register to select the device on the SPI before
	 * starting the transfer of data.
	 */
	XSpi_WriteReg(SpiInstancePtr->BaseAddr, XSP_SSR_OFFSET, 0xFFFFFFFE);

	/*
	 * Start the transfer by no longer inhibiting the transmitter and
	 * enabling the device. For a master, this will in fact start the
	 * transfer, but for a slave it only prepares the device for a transfer
	 * that must be initiated by a master.
	 */
	ControlReg = XSpi_GetControlReg(SpiInstancePtr);
	ControlReg &= ~XSP_CR_TRANS_INHIBIT_MASK;
	XSpi_SetControlReg(SpiInstancePtr, ControlReg);

	/*
	* Wait for the transfer to be done by polling the
	* Transmit empty status bit
	*/
	do {
		StatusReg = XSpi_GetStatusReg(SpiInstancePtr);
	} while ((StatusReg & XSP_SR_TX_EMPTY_MASK) == 0);

	XSpi_WriteReg(SpiInstancePtr->BaseAddr, XSP_SSR_OFFSET, 0xFFFFFFFF);
	ControlReg = XSpi_GetControlReg(SpiInstancePtr);
	XSpi_SetControlReg(SpiInstancePtr, ControlReg | XSP_CR_TRANS_INHIBIT_MASK);
	//while ((StatusReg & XSP_SR_RX_EMPTY_MASK) == 0);
	rev_buf = XSpi_ReadReg(SpiInstancePtr->BaseAddr, XSP_DRR_OFFSET);

	return rev_buf;
}

void print_app_header(void)
{
	xil_printf("UDP client connecting to %s on port %d\r\n",
			UDP_SERVER_IP_ADDRESS, UDP_CONN_PORT);
	xil_printf("On Host: Run $iperf -s -i %d -u\r\n\r\n",
			INTERIM_REPORT_INTERVAL);
}

static void udp_packet_send(u8_t finished)
{
	int *payload;
	static int packet_id;
	u8_t i;
	struct pbuf *packet;
	err_t err;

	for (i = 0; i < NUM_OF_PARALLEL_CLIENTS; i++) {

		packet = pbuf_alloc(PBUF_TRANSPORT, UDP_SEND_BUFSIZE + 4, PBUF_POOL);
		if (!packet) {
			xil_printf("error allocating pbuf to send\r\n");
			return;
		}
		else {
			if (pingpong)
			{
				Xil_DCacheFlushRange((INTPTR)RX_BUFFER_BASE_PING,UDP_SEND_BUFSIZE);
				memcpy(packet->payload, (char *) RX_BUFFER_BASE_PING, UDP_SEND_BUFSIZE);
				Xil_DCacheFlushRange((INTPTR)RX_BUFFER_BASE_PING,UDP_SEND_BUFSIZE);
				//Xil_DCacheInvalidateRange((INTPTR)RX_BUFFER_BASE_PING,UDP_SEND_BUFSIZE);
				pingpong = 0;
			}
			else
			{
				Xil_DCacheFlushRange((INTPTR)RX_BUFFER_BASE_PONG,UDP_SEND_BUFSIZE);
				memcpy(packet->payload, (char *) RX_BUFFER_BASE_PONG, UDP_SEND_BUFSIZE);
				Xil_DCacheFlushRange((INTPTR)RX_BUFFER_BASE_PONG,UDP_SEND_BUFSIZE);
				//Xil_DCacheInvalidateRange((INTPTR)RX_BUFFER_BASE_PONG,UDP_SEND_BUFSIZE);
				pingpong = 1;
			}
		}

		/* always increment the id */
		payload = (int*) (packet->payload);
		if (finished == FINISH)
			packet_id = -1;

		payload[265] = htonl(packet_id);

		err = udp_send(pcb[i], packet);
		if (err != ERR_OK) {
			xil_printf("Error on udp_send: %d\r\n", err);
			usleep(100);
		}

		pbuf_free(packet);

		/* For ZynqMP SGMII, At high speed,
		 * "pack dropped, no space" issue observed.
		 * To avoid this, added delay of 2us between each
		 * packets.
		 */
#if defined (__aarch64__) && defined (XLWIP_CONFIG_INCLUDE_AXI_ETHERNET)
		usleep(2);
#endif /* __aarch64__ */

	}
	packet_id++;
}

/** Transmit data on a udp session */
void transfer_data(void)
{
	int i = 0;

	if (!DATA_READY) return;

	DATA_READY = 0;

	for (i = 0; i < NUM_OF_PARALLEL_CLIENTS; i++) {
		if (pcb[i] == NULL)
			return;
	}

	udp_packet_send(!FINISH);
}

static void udp_recv_perf_traffic(void *arg, struct udp_pcb *tpcb,
		struct pbuf *p, const ip_addr_t *addr, u16_t port)
{
	uint32_t i;
	u8 *c = p->payload;
	xil_printf("Package rev : %s\r\n",p->payload);
	for (i = 0; i < p->len; i++) {
		XSpi_Transfer8bits(&SpiInstance, c[i]);
		usleep(100);
	}
	return;
}

static void start_application_rev(void)
{
	err_t err;

	/* Create Server PCB */
	pcb_rev = udp_new();
	if (!pcb_rev) {
		xil_printf("UDP server: Error creating PCB. Out of Memory\r\n");
		return;
	}

	err = udp_bind(pcb_rev, IP_ADDR_ANY, UDP_CONN_PORT);
	if (err != ERR_OK) {
		xil_printf("UDP server: Unable to bind to port");
		xil_printf(" %d: err = %d\r\n", UDP_CONN_PORT, err);
		udp_remove(pcb_rev);
		return;
	}

	/* specify callback to use for incoming connections */
	udp_recv(pcb_rev, udp_recv_perf_traffic, NULL);

	return;
}

void start_application(void)
{
	err_t err;
	ip_addr_t remote_addr;
	u32_t i;

	int Status;

	/*
	 * Run the Spi Polled example.
	 */
	Status = Spi_Initialize(&SpiInstance);
	if (Status != XST_SUCCESS) {
		xil_printf("Spi setup Failed\r\n");
		return;
	}

	err = inet_aton(UDP_SERVER_IP_ADDRESS, &remote_addr);
	if (!err) {
		xil_printf("Invalid Server IP address: %d\r\n", err);
		return;
	}

	for (i = 0; i < NUM_OF_PARALLEL_CLIENTS; i++) {
		/* Create Client PCB */
		pcb[i] = udp_new();
		if (!pcb[i]) {
			xil_printf("Error in PCB creation. out of memory\r\n");
			return;
		}

		err = udp_connect(pcb[i], &remote_addr, UDP_CONN_PORT);
		if (err != ERR_OK) {
			xil_printf("udp_client: Error on udp_connect: %d\r\n", err);
			udp_remove(pcb[i]);
			return;
		}
	}
	/* Wait for successful connection */
	usleep(10);
	//reset_stats();

	pingpong = 1;
	start_application_rev();
}
