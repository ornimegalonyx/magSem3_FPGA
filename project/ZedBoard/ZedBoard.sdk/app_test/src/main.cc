/*
 * main.cc
 *
 *  Created on: 6 ���. 2021 �.
 *      Author: Viktor
 */

#include <VGA.h>

#include <mtds.h>
#include <MyDisp.h>
#include <stdint.h>
#include <string.h>
#include "sleep.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xgpio.h"

#include "xil_mmu.h"
#include "xil_assert.h"

#include "webcam.h"

#define DEBUG

//#define VGA_MEMORY_ATTRIBUTE 0x00010c06

// frame for VGA SLAVE
#define VGA_FRAME1_ADDRESS 0x10000000
#define VGA_FRAME2_ADDRESS 0x10100000
#define VGA_FRAME3_ADDRESS 0x10200000
// frame for CPU SLAVE
// vga_frame our_vga_frame;
// vga our_vga;

//#define OV7670_STREAM 0x40000000

#define VDMA_MM2S 0x43000000
#define VDMA_S2MM 0x43010000

#define WIDTH 640
#define HEIGHT 480
#define CAM_BPP 2

vga_pixel cur_color = {0, 0, 0};

// void vga_setup(vga *vga_obj, uint32_t *config_address,
//                vga_frame *vga_frame_obj)
// {
//     vga_obj->config_address = config_address;
//     vga_obj->vga_frame_obj = vga_frame_obj;
//     vga_frame_clear(vga_frame_obj);
//     vga_obj->config_address[VGA_ADDR_ADDRESS_REG] = (uint32_t)vga_frame_obj;
//     vga_set_start(vga_obj, 1);
// }

vdma_handle handle_s2mm;
vdma_handle handle_mm2s;

void setup()
{
	/* Configure frame buffer memory to device. */
	//Xil_SetTlbAttributes(VGA_FRAME_ADDRESS, VGA_MEMORY_ATTRIBUTE);

	// vga_setup(&our_vga, (uint32_t *)0x43C30000, (vga_frame *)VGA_FRAME_ADDRESS);
	// vga_frame_clear(&our_vga_frame);

	// Setup VDMA handle and memory-mapped ranges
	vdma_setup(&handle_s2mm, VDMA_S2MM, WIDTH, HEIGHT, CAM_BPP,
			   VGA_FRAME1_ADDRESS,
			   0, 0);
	vdma_setup(&handle_mm2s, VDMA_MM2S, WIDTH, HEIGHT, CAM_BPP,
			   VGA_FRAME3_ADDRESS,
			   0, 0);

	// Start triple buffering
	vdma_start_s2mm(&handle_s2mm);
	vdma_start_mm2s(&handle_mm2s);

	//Xil_Out32(OV7670_STREAM, 1);
}

// VGA_FRAME1_ADDRESS - here we stream from camera
// VGA_FRAME2_ADDRESS/VGA_FRAME3_ADDRESS - here we changing frame			v
// VGA_FRAME3_ADDRESS/VGA_FRAME2_ADDRESS - from here we stream to VGA		^

int main()
{
	setup();

	while (1)
	{
		// wait for frame from camera done
		// TODO: wait

		// cpy frame1 to frame2
		memcpy((void *)VGA_FRAME2_ADDRESS, (void *)VGA_FRAME1_ADDRESS, WIDTH * HEIGHT * CAM_BPP);

		// change frame data
		// TODO: handler

		// cpy frame2 to frame3
		memcpy((void *)VGA_FRAME3_ADDRESS, (void *)VGA_FRAME3_ADDRESS, WIDTH * HEIGHT * CAM_BPP);
	}

	return 0;
}
