#ifndef SRC_VDMA_API_H_
#define SRC_VDMA_API_H_

/******************** Include files **********************************/
#include "vdma_api.h"
#include "xaxivdma.h"
#include "xil_exception.h"
#include "xparameters.h"

/******************** Data structure Declarations *****************************/

typedef struct vdma_handle {
  /* The device ID of the VDMA */
  unsigned int device_id;
  /* The state variable to keep track if the initialization is done*/
  unsigned int init_done;
  /** The XAxiVdma driver instance data. */
  XAxiVdma *InstancePtr;
  /* The XAxiVdma_DmaSetup structure contains all the necessary information to
   * start a frame write or read. */
  XAxiVdma_DmaSetup ReadCfg;
  XAxiVdma_DmaSetup WriteCfg;
  /* Horizontal size of frame */
  unsigned int hsize;
  /* Vertical size of frame */
  unsigned int vsize;
  /* Buffer address from where read and write will be done by VDMA */
  unsigned int buffer_address;
  /* Flag to tell VDMA to interrupt on frame completion*/
  unsigned int enable_frm_cnt_intr;
  /* The counter to tell VDMA on how many frames the interrupt should happen*/
  unsigned int number_of_frame_count;
} vdma_handle;

/******************* Function Prototypes ************************************/

int ReadSetup(vdma_handle *vdma_context);
int WriteSetup(vdma_handle *vdma_context);
int StartTransfer(XAxiVdma *InstancePtr);

/*****************************************************************************/
/**
 *
 * run_frame_buffer API
 *
 * This API is the interface between application and other API. When application
 *will call this API with right argument, This API will call rest of the API to
 *configure the read and write path of VDMA,based on ID. After that it will
 *start both the read and write path of VDMA
 *
 * @param	InstancePtr is the handle to XAxiVdma data structure.
 * @param	DeviceId is the device ID of current VDMA
 * @param	hsize is the horizontal size of the frame. It will be in Pixels.
 * 		The actual size of frame will be calculated by multiplying this
 * 		with tdata width.
 * @param 	vsize is the Vertical size of the frame.
 * @param	buf_base_addr is the buffer address where frames will be written
 *		and read by VDMA.
 * @param 	number_frame_count specifies after how many frames the interrupt
 *		should come.
 * @param 	enable_frm_cnt_intr is for enabling frame count interrupt
 *		when set to 1.
 * @return
 *		- XST_SUCCESS if example finishes successfully
 *		- XST_FAILURE if example fails.
 *
 ******************************************************************************/
int run_frame_buffer(XAxiVdma *InstancePtr, int DeviceId, int hsize, int vsize,
                     int buf_base_addr, int number_frame_count,
                     int enable_frm_cnt_intr);

#endif /* SRC_VDMA_API_H_ */
