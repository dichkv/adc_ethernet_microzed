/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include <stdint.h>

#define ADC_DMAC_REG_IRQ_MASK			0x80
#define ADC_DMAC_REG_IRQ_PENDING		0x84
#define ADC_DMAC_REG_IRQ_SOURCE			0x88

#define ADC_DMAC_REG_CTRL				0x400
#define ADC_DMAC_REG_TRANSFER_ID		0x404
#define ADC_DMAC_REG_START_TRANSFER		0x408
#define ADC_DMAC_REG_FLAGS				0x40c
#define ADC_DMAC_REG_DEST_ADDRESS		0x410
#define ADC_DMAC_REG_SRC_ADDRESS		0x414
#define ADC_DMAC_REG_X_LENGTH			0x418
#define ADC_DMAC_REG_Y_LENGTH			0x41c
#define ADC_DMAC_REG_DEST_STRIDE		0x420
#define ADC_DMAC_REG_SRC_STRIDE			0x424
#define ADC_DMAC_REG_TRANSFER_DONE		0x428
#define ADC_DMAC_REG_ACTIVE_TRANSFER_ID 0x42c
#define ADC_DMAC_REG_STATUS				0x430
#define ADC_DMAC_REG_CURRENT_DEST_ADDR	0x434
#define ADC_DMAC_REG_CURRENT_SRC_ADDR	0x438
#define ADC_DMAC_REG_DBG0				0x43c
#define ADC_DMAC_REG_DBG1				0x440

#define ADC_DMAC_CTRL_ENABLE			(1 << 0)
#define ADC_DMAC_CTRL_PAUSE				(1 << 1)

#define ADC_DMAC_IRQ_SOT				(1 << 0)
#define ADC_DMAC_IRQ_EOT				(1 << 1)

#define RX_BUFFER_BASE_PING 0x8000000
#define RX_BUFFER_BASE_PONG 0x8000500

#define DATA_READY  (*(volatile unsigned long *)(0xFFFF0000))
#define PINGPONG  (*(volatile unsigned long *)(0xFFFF0004))

/******************************************************************************/
/************************ Functions Declarations ******************************/
/******************************************************************************/

int32_t adc_capture(uint32_t start_address);

