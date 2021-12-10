#include "xparameters.h"
#include "xil_io.h"
#include <stdint.h>
#include "webcam.h"

int vdma_setup(vdma_handle *handle,
               unsigned int baseAddr,
               int width, int height,
               int pixelLength,
               unsigned int fb1Addr,
               unsigned int fb2Addr,
               unsigned int fb3Addr)
{
    handle->width = width;
    handle->height = height;
    handle->pixelLength = pixelLength;
    handle->fbLength = pixelLength * width * height;

    handle->vdmaVirtualAddress = (unsigned int *)baseAddr;
    handle->fb1PhysicalAddress = (uint16_t *)fb1Addr;
    handle->fb2PhysicalAddress = (uint16_t *)fb2Addr;
    handle->fb3PhysicalAddress = (uint16_t *)fb3Addr;
    return 0;
}

unsigned int vdma_get(vdma_handle *handle, int num)
{
    return handle->vdmaVirtualAddress[num >> 2];
}

void vdma_set(vdma_handle *handle, int num, unsigned int val)
{
    handle->vdmaVirtualAddress[num >> 2] = val;
}

void vdma_start_s2mm(vdma_handle *handle)
{
    // Reset VDMA
    vdma_set(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);

    // Wait for reset to finish
    while ((vdma_get(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET) == 4)
        ;

    // Clear all error bits in status register
    vdma_set(handle, OFFSET_VDMA_S2MM_STATUS_REGISTER, 0);

    // Do not mask interrupts
    vdma_set(handle, OFFSET_VDMA_S2MM_IRQ_MASK, 0xf);

    int interrupt_frame_count = 1;

    // Start both S2MM and MM2S in triple buffering mode
    vdma_set(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER,
             (interrupt_frame_count << 16) |
                 VDMA_CONTROL_REGISTER_START);

    while ((vdma_get(handle, 0x30) & 1) == 0 || (vdma_get(handle, 0x34) & 1) == 1)
        ;

    // Extra register index, use first 16 frame pointer registers
    vdma_set(handle, OFFSET_VDMA_S2MM_REG_INDEX, 0);

    // Write physical addresses to control register
    vdma_set(handle, OFFSET_VDMA_S2MM_FRAMEBUFFER1, (unsigned int)handle->fb1PhysicalAddress);
    // vdma_set(handle, OFFSET_VDMA_S2MM_FRAMEBUFFER2, (unsigned int)handle->fb2PhysicalAddress);
    // vdma_set(handle, OFFSET_VDMA_S2MM_FRAMEBUFFER3, (unsigned int)handle->fb3PhysicalAddress);

    // Write Park pointer register
    vdma_set(handle, OFFSET_PARK_PTR_REG, 0);

    // Frame delay and stride (bytes)
    vdma_set(handle, OFFSET_VDMA_S2MM_FRMDLY_STRIDE, handle->width * handle->pixelLength);

    // Write horizontal size (bytes)
    vdma_set(handle, OFFSET_VDMA_S2MM_HSIZE, handle->width * handle->pixelLength);

    // Write vertical size (lines), this actually starts the transfer
    vdma_set(handle, OFFSET_VDMA_S2MM_VSIZE, handle->height);
}

void vdma_start_mm2s(vdma_handle *handle)
{
    // Reset VDMA
    vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);

    // Wait for reset to finish
    while ((vdma_get(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET) == 4)
        ;

    // Clear all error bits in status register
    vdma_set(handle, OFFSET_VDMA_MM2S_STATUS_REGISTER, 0);

    int interrupt_frame_count = 1;

    // Set buffer number
    vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER,
             (interrupt_frame_count << 16) |
                 VDMA_CONTROL_REGISTER_START);

    vdma_set(handle, OFFSET_VDMA_MM2S_FRAMEBUFFER1, (unsigned int)handle->fb1PhysicalAddress);
    // vdma_set(handle, OFFSET_VDMA_MM2S_FRAMEBUFFER2, (unsigned int)handle->fb2PhysicalAddress);
    // vdma_set(handle, OFFSET_VDMA_MM2S_FRAMEBUFFER3, (unsigned int)handle->fb3PhysicalAddress);

    // Write Park pointer register
    vdma_set(handle, OFFSET_PARK_PTR_REG, 0);

    // Frame delay and stride (bytes)
    vdma_set(handle, OFFSET_VDMA_MM2S_FRMDLY_STRIDE, handle->width * handle->pixelLength);

    // Write horizontal size (bytes)
    vdma_set(handle, OFFSET_VDMA_MM2S_HSIZE, handle->width * handle->pixelLength);

    // Write vertical size (lines), this actually starts the transfer
    vdma_set(handle, OFFSET_VDMA_MM2S_VSIZE, handle->height);
}

//int main() {
//
//}
