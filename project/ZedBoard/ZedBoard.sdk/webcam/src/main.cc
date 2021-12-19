/*
 * main.cc
 *
 *  Created on: 6 ���. 2021 �.
 *      Author: Viktor
 */


#include <stdint.h>
#include <string.h>
#include "sleep.h"
#include "xil_cache.h"
#include "xparameters.h"

#include "xil_mmu.h"
#include "xil_assert.h"

#include "webcam.h"

#define DEBUG

#define VGA_MEMORY_ATTRIBUTE 		0x00010c06

// frame for VGA SLAVE
#define VGA_FRAME_ADDRESS 			0x10000000
// frame for CPU SLAVE
#define OV7670_STREAM							0x40000000
#define VDMA_MM2S								0x43000000
#define VDMA_S2MM								0x43010000

#define HEIGHT                                  480
#define WIDTH                                   640


void setup() {

    vdma_handle handle_s2mm;
    vdma_handle handle_mm2s;

    // Setup VDMA handle and memory-mapped ranges
    vdma_setup(&handle_s2mm, VDMA_S2MM, WIDTH, HEIGHT, 2, 0x10000000);
    vdma_setup(&handle_mm2s, VDMA_MM2S, WIDTH, HEIGHT, 2, 0x10000000);

    // Start triple buffering
    vdma_start_s2mm(&handle_s2mm);
    vdma_start_mm2s(&handle_mm2s);

}

int main() {
	setup();

	while (1) {
		// TODO: handler
		//vga_frame_draw(&our_vga_frame, &our_vga);
	}

	return 0;
}