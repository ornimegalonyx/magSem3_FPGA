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

#define VGA_MEMORY_ATTRIBUTE 		0x00010c06

// frame for VGA SLAVE
#define VGA_FRAME_ADDRESS 			0x10000000
// frame for CPU SLAVE
vga_frame our_vga_frame;
vga our_vga;

#define OV7670_STREAM							0x40000000
#define VDMA_MM2S								0x43010000
#define VDMA_S2MM								0x43010000

#define HEIGHT                                  480
#define WIDTH                                   640

vga_pixel cur_color = { 0, 0, 0 };

void vga_setup(vga* vga_obj, uint32_t* config_address,
		vga_frame* vga_frame_obj) {
	vga_obj->config_address = config_address;
	vga_obj->vga_frame_obj = vga_frame_obj;
	vga_frame_clear(vga_frame_obj);
	vga_obj->config_address[VGA_ADDR_ADDRESS_REG] = (uint32_t) vga_frame_obj;
	vga_set_start(vga_obj, 1);
}

void setup() {
	/* Configure frame buffer memory to device. */
	Xil_SetTlbAttributes(VGA_FRAME_ADDRESS, VGA_MEMORY_ATTRIBUTE);

	vga_setup(&our_vga, (uint32_t*) 0x43C30000, (vga_frame*) VGA_FRAME_ADDRESS);
	vga_frame_clear(&our_vga_frame);

    vdma_handle handle_s2mm;
//    vdma_handle handle_mm2s;

    // Setup VDMA handle and memory-mapped ranges
    vdma_setup(&handle_s2mm, VDMA_S2MM, WIDTH, HEIGHT, 2, 0x10000000);
//    vdma_setup(&handle_mm2s, VDMA_MM2S, WIDTH, HEIGHT, 2, 0x10000000);

    // Start triple buffering
    vdma_start_s2mm(&handle_s2mm);
//    vdma_start_mm2s(&handle_mm2s);

    Xil_Out32(OV7670_STREAM, 1);

}

int main() {
	setup();

	while (1) {
		// TODO: handler
		//vga_frame_draw(&our_vga_frame, &our_vga);
	}

	return 0;
}