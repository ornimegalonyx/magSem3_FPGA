#include "camera.h"
#include "vdma_api.h"
#include "xaxivdma.h"
#include "xil_exception.h"
#include "xparameters.h"
#include "xscugic.h"

#define OV7670_STREAM 0x43C00000
#define HEIGHT 480
#define WIDTH 640

#define BUFFER_BASEADDR XPAR_PS7_DDR_0_S_AXI_BASEADDR
#define ADDR_OFFSET WIDTH* HEIGHT * 2
#define NO_COLLISION

static int SetupIntrSystem(XAxiVdma* S2MmPtr, XScuGic* IntcInstancePtr,
                           XScuGic_Config* IntcConfigPtr, u16 WriteIntrId);
static void WriteCallBack(void* CallbackRef, u32 Mask);
static void WriteErrorCallBack(void* CallbackRef, u32 Mask);
static int WriteDone;
static int WriteError;

static int getI(int i, int j);

int main() {
  int Status;
  Status = InitCamera();
  if (Status != XST_SUCCESS) {
    return 0;
  }
  InitDefaultReg();
  InitRGB565();
  InitVGA();

  XScuGic Intc;
  XScuGic_Config IntcConfigPtr;

  XAxiVdma vdma_mm2s;
  XAxiVdma vdma_s2mm;
  u16* buffer_1 = (int*)(BUFFER_BASEADDR);
  u16* buffer_2 = (int*)(BUFFER_BASEADDR + ADDR_OFFSET);

  Status = run_frame_buffer(&vdma_s2mm, XPAR_VDMA_S2MM_DEVICE_ID, WIDTH, HEIGHT,
                            BUFFER_BASEADDR, 3, 0);
  if (Status != XST_SUCCESS) {
    xil_printf("Transfer of frames failed with error = %d\r\n", Status);
    return XST_FAILURE;
  } else {
    xil_printf("Transfer of frames started \r\n");
  }

  // Status = SetupIntrSystem(&vdma_s2mm, &Intc, &IntcConfigPtr,
  //                          XPAR_FABRIC_AXIVDMA_1_VEC_ID);
  // if (Status != XST_SUCCESS) {
  //   xil_printf("Setup interrupt system failed %d\r\n", Status);
  //   return XST_FAILURE;
  // }
#ifndef NO_COLLISION
  Status = run_frame_buffer(&vdma_mm2s, XPAR_VDMA_MM2S_DEVICE_ID, WIDTH, HEIGHT,
                            BUFFER_BASEADDR, 3, 0);
#else
  Status = run_frame_buffer(&vdma_mm2s, XPAR_VDMA_MM2S_DEVICE_ID, WIDTH, HEIGHT,
                            BUFFER_BASEADDR + ADDR_OFFSET, 3, 0);
#endif
  if (Status != XST_SUCCESS) {
    xil_printf("Transfer of frames failed with error = %d\r\n", Status);
    return XST_FAILURE;
  } else {
    xil_printf("Transfer of frames started \r\n");
  }

  Xil_Out32(OV7670_STREAM, 1);

  // int red;
  // int green;
  // int blue;
  // int counter = 0;

  while (1) {
    // sleep(1);
    //    xil_printf("WriteDone: %d, WriteError: %d \r\n", WriteDone,
    //    WriteError);

#ifdef NO_COLLISION
    // for (int i = 0; i < HEIGHT; i++) {
    //   for (int j = 0; j < WIDTH; j++) {
    //     red = green = blue = 0;
    //     counter = 0;
    //     int i_j = getI(i, j);
    //     int ip1_jm1 = getI(i + 1, j - 1);
    //     int ip1_jp1 = getI(i + 1, j + 1);
    //     int i_jp1 = getI(i, j + 1);
    //     int ip1_j = getI(i + 1, j);
    //     int i_jm1 = getI(i, j - 1);
    //     int im1_j = getI(i - 1, j);

    //     if (i + 1 < HEIGHT && j - 1 >= 0) {
    //       red += (buffer_1[i_j] >> 11) + (buffer_1[ip1_jm1] >> 11);
    //       green += ((buffer_1[i_j] >> 5) & 0b111111) +
    //                ((buffer_1[ip1_jm1] >> 5) & 0b111111);
    //       blue += (buffer_1[i_j] & 0b11111) + (buffer_1[ip1_jm1] & 0b11111);
    //       counter++;
    //     }
    //     if (j + 1 < WIDTH) {
    //       red += (buffer_1[i_j] >> 11) + (buffer_1[i_jp1] >> 11);
    //       green += ((buffer_1[i_j] >> 5) & 0b111111) +
    //                ((buffer_1[i_jp1] >> 5) & 0b111111);
    //       blue += (buffer_1[i_j] & 0b11111) + (buffer_1[i_jp1] & 0b11111);
    //       counter++;
    //     }
    //     if (i + 1 < HEIGHT && j + 1 < WIDTH) {
    //       red += (buffer_1[i_j] >> 11) + (buffer_1[ip1_jp1] >> 11);
    //       green += ((buffer_1[i_j] >> 5) & 0b111111) +
    //                ((buffer_1[ip1_jp1] >> 5) & 0b111111);
    //       blue += (buffer_1[i_j] & 0b11111) + (buffer_1[ip1_jp1] & 0b11111);
    //       counter++;
    //     }
    //     if (i + 1 < HEIGHT) {
    //       red += (buffer_1[i_j] >> 11) + (buffer_1[ip1_j] >> 11);
    //       green += ((buffer_1[i_j] >> 5) & 0b111111) +
    //                ((buffer_1[ip1_j] >> 5) & 0b111111);
    //       blue += (buffer_1[i_j] & 0b11111) + (buffer_1[ip1_j] & 0b11111);
    //       counter++;
    //     }
    //     if (j - 1 >= 0) {
    //       red += (buffer_1[i_j] >> 11) + (buffer_1[i_jm1] >> 11);
    //       green += ((buffer_1[i_j] >> 5) & 0b111111) +
    //                ((buffer_1[i_jm1] >> 5) & 0b111111);
    //       blue += (buffer_1[i_j] & 0b11111) + (buffer_1[i_jm1] & 0b11111);
    //       counter++;
    //     }
    //     if (i - 1 >= 0) {
    //       red += (buffer_1[i_j] >> 11) + (buffer_1[im1_j] >> 11);
    //       green += ((buffer_1[i_j] >> 5) & 0b111111) +
    //                ((buffer_1[im1_j] >> 5) & 0b111111);
    //       blue += (buffer_1[i_j] & 0b11111) + (buffer_1[im1_j] & 0b11111);
    //       counter++;
    //     }
    //     buffer_2[i_j] = ((red / counter) << 11) & ((green / counter) << 5) &
    //                     (blue / counter);
    //   }
    // }
    // for (int i = 0; i < WIDTH * HEIGHT; i++) {
    //   buffer_2[i] = buffer_1[i];
    // }

    for (int i = 0; i < WIDTH * HEIGHT; i++) {
      buffer_2[i] = ~buffer_1[i];
    }

#endif
  };
  return 0;
}

int SetupIntrSystem(XAxiVdma* S2MmPtr, XScuGic* IntcInstancePtr,
                    XScuGic_Config* IntcConfigPtr, u16 WriteIntrId) {
  int Status;
  IntcConfigPtr = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
  if (NULL == IntcConfigPtr) {
    return XST_FAILURE;
  }

  Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfigPtr,
                                 IntcConfigPtr->CpuBaseAddress);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  XScuGic_SetPriorityTriggerType(IntcInstancePtr, WriteIntrId, 0xA0, 0x3);

  Status = XScuGic_SelfTest(IntcInstancePtr);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }

  Status =
      XScuGic_Connect(IntcInstancePtr, WriteIntrId,
                      (Xil_InterruptHandler)XAxiVdma_WriteIntrHandler, S2MmPtr);
  if (Status != XST_SUCCESS) {
    return Status;
  }

  XScuGic_Enable(IntcInstancePtr, WriteIntrId);

  Xil_ExceptionInit();
  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
                               (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                               IntcInstancePtr);
  Xil_ExceptionEnable();

  XAxiVdma_SetCallBack(S2MmPtr, XAXIVDMA_HANDLER_GENERAL, WriteCallBack,
                       (void*)S2MmPtr, XAXIVDMA_WRITE);

  XAxiVdma_SetCallBack(S2MmPtr, XAXIVDMA_HANDLER_ERROR, WriteErrorCallBack,
                       (void*)S2MmPtr, XAXIVDMA_WRITE);

  return XST_SUCCESS;
}

static void WriteCallBack(void* CallbackRef, u32 Mask) {
  if (Mask & XAXIVDMA_IXR_FRMCNT_MASK) {
    WriteDone += 1;
    xil_printf("WriteCallBack \r\n");
  }
}

static void WriteErrorCallBack(void* CallbackRef, u32 Mask) {
  if (Mask & XAXIVDMA_IXR_ERROR_MASK) {
    WriteError += 1;
  }
}

static int getI(int i, int j) { return i * WIDTH + j; }