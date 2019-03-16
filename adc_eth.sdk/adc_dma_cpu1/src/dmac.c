/***************************************************************************//**
* @file adc_core.c
* @brief Implementation of ADC Core Driver.
* @author DBogdan (dragos.bogdan@analog.com)
********************************************************************************
* Copyright 2014-2015(c) Analog Devices, Inc.
*
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
* - Redistributions of source code must retain the above copyright
* notice, this list of conditions and the following disclaimer.
* - Redistributions in binary form must reproduce the above copyright
* notice, this list of conditions and the following disclaimer in
* the documentation and/or other materials provided with the
* distribution.
* - Neither the name of Analog Devices, Inc. nor the names of its
* contributors may be used to endorse or promote products derived
* from this software without specific prior written permission.
* - The use of this software may or may not infringe the patent rights
* of one or more patent holders. This license does not release you
* from the requirement that you obtain separate licenses from these
* patent holders to use this software.
* - Use of the software either in source or binary form, must be run
* on or directly connected to an Analog Devices Inc. component.
*
* THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR
* IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT,
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, INTELLECTUAL PROPERTY RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include <xil_io.h>
#include <xil_printf.h>
#include <xscugic.h>

#include "dmac.h"

#include "xparameters.h"
#include "xil_cache.h"
#include "xtime_l.h"
/******************************************************************************/
/************************ Variables Definitions *******************************/
/******************************************************************************/

volatile uint8_t  adc_sot_flag			= 0;
volatile uint8_t  adc_eot_flag			= 0;
static volatile uint8_t  pingpong	= 1;

/******************************************************************************/
/********************** Macros and Constants Definitions **********************/
/******************************************************************************/
#define ADC_DMAC_INT_ID			XPAR_FABRIC_AXI_DMAC_0_IRQ_INTR
#define EXTERNAL_INT_ID			XPAR_FABRIC_AXIS_ADC_0_IRQ_INTR
#define ADC_DMAC_TRANSFER_SIZE	1060

/***************************************************************************//**
* @brief adc_read
*******************************************************************************/
/***************************************************************************//**
 * @brief adc_dmac_read
*******************************************************************************/
void adc_dmac_read(uint32_t reg_addr, uint32_t *reg_data)
{
	*reg_data = Xil_In32(XPAR_AXI_DMAC_0_BASEADDR + reg_addr);
}

/***************************************************************************//**
 * @brief adc_dmac_write
*******************************************************************************/
void adc_dmac_write(uint32_t reg_addr, uint32_t reg_data)
{
	Xil_Out32(XPAR_AXI_DMAC_0_BASEADDR + reg_addr, reg_data);
}

/***************************************************************************//**
 * @brief adc_dmac_isr
*******************************************************************************/
static void adc_dmac_isr(void *instance)
{
	uint32_t reg_val;

	adc_dmac_read(ADC_DMAC_REG_IRQ_PENDING, &reg_val);
	adc_dmac_write(ADC_DMAC_REG_IRQ_PENDING, reg_val);

	if(reg_val & ADC_DMAC_IRQ_SOT)
	{
		adc_sot_flag = 1;
	}

	if(reg_val & ADC_DMAC_IRQ_EOT)
	{
		DATA_READY = 1;
	}

	return;
}

static void external_isr(void *instance)
{

	if (pingpong) {
		adc_dmac_write(ADC_DMAC_REG_DEST_ADDRESS, RX_BUFFER_BASE_PING);
		pingpong = 0;
	}
	else {
		adc_dmac_write(ADC_DMAC_REG_DEST_ADDRESS, RX_BUFFER_BASE_PONG);
		pingpong = 1;
	}
	adc_dmac_write(ADC_DMAC_REG_START_TRANSFER, 0x1);
	return;
}
/***************************************************************************//**
 * @brief adc_capture
*******************************************************************************/
int32_t adc_capture(uint32_t start_address)
{

	uint32_t reg_val;
	uint32_t transfer_id;
	XScuGic_Config	*gic_config;
	XScuGic			gic;
	int32_t			status;

	adc_dmac_write(ADC_DMAC_REG_CTRL, 0x0);
	adc_dmac_write(ADC_DMAC_REG_CTRL, ADC_DMAC_CTRL_ENABLE);

	adc_dmac_write(ADC_DMAC_REG_IRQ_MASK, 0x01); //0x01 eot, 0x02 sot

	adc_dmac_read(ADC_DMAC_REG_TRANSFER_ID, &transfer_id);
	adc_dmac_read(ADC_DMAC_REG_IRQ_PENDING, &reg_val);
	adc_dmac_write(ADC_DMAC_REG_IRQ_PENDING, reg_val);

	gic_config = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if(gic_config == NULL)
		xil_printf("Error\n");

	status = XScuGic_CfgInitialize(&gic, gic_config, gic_config->CpuBaseAddress);
	if(status)
		xil_printf("Error\n");

	XScuGic_SetPriorityTriggerType(&gic, ADC_DMAC_INT_ID, 0x0, 0x3);
	XScuGic_SetPriorityTriggerType(&gic, EXTERNAL_INT_ID, 0x0, 0x3);

	XScuGic_InterruptMaptoCpu(&gic,1,ADC_DMAC_INT_ID);
	XScuGic_InterruptMaptoCpu(&gic,1,EXTERNAL_INT_ID);

	status = XScuGic_Connect(&gic, ADC_DMAC_INT_ID, (Xil_ExceptionHandler)adc_dmac_isr, NULL);
	if(status)
		xil_printf("Error 1\n\r");

	status = XScuGic_Connect(&gic, EXTERNAL_INT_ID, (Xil_ExceptionHandler)external_isr, NULL);
	if(status)
		xil_printf("Error 2\n\r");

	XScuGic_Enable(&gic, ADC_DMAC_INT_ID);
	XScuGic_Enable(&gic, EXTERNAL_INT_ID);

	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, (void *)&gic);
	Xil_ExceptionEnable();

	Xil_DCacheDisable();

	adc_dmac_write(ADC_DMAC_REG_DEST_ADDRESS, start_address);
	adc_dmac_write(ADC_DMAC_REG_DEST_STRIDE, 0x0);
	adc_dmac_write(ADC_DMAC_REG_X_LENGTH, ADC_DMAC_TRANSFER_SIZE - 1);
	adc_dmac_write(ADC_DMAC_REG_Y_LENGTH, 0x0);

	//adc_dmac_write(ADC_DMAC_REG_START_TRANSFER, 0x1);

	return 0;
}
