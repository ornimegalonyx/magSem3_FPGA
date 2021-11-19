#include <mtds.h>
#include <MyDisp.h>
#include <stdint.h>
#include <string.h>
#include "sleep.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xgpio.h"

#define FREQ_DIV_TH 10
#define MAX_WIDTH 240
#define MAX_HEIGHT 320

XGpio gpio0, gpio1;
u32 btn, sw;
uint32_t freqDiv = 0;

struct {
	uint8_t central;
	uint8_t bottom;
	uint8_t left;
	uint8_t right;
	uint8_t up;
} buttons;

MDFNG rgfng[2], lastDown, lastMove, prevFng;
uint32_t curPen = penSolid;
uint32_t curColor = clrBlack;
uint32_t curBackground = clrWhite;
uint32_t curTransparency = false;
uint32_t curFill = true;
uint8_t penState = 0x08, clrState = 0x01, bkgdState = 0x80;

void setup();
void gpioRW();
void checkTouch();
void paint();

int main() {
	setup();
	while (1) {
		if (freqDiv == FREQ_DIV_TH - 1) {
			freqDiv = 0;
			gpioRW();
		}
		else {
			freqDiv++;
		}
		checkTouch();
		paint();
	}
	return 0;
}

void setup() {
	XGpio_Initialize(&gpio0, 0);
	XGpio_Initialize(&gpio1, 1);
	XGpio_SetDataDirection(&gpio0, 1, 0xFFFFFFFF); // set SW GPIO channel tristates to All Input
	XGpio_SetDataDirection(&gpio0, 2, 0x00000000); // set LED GPIO channel tristates to All Output
	XGpio_SetDataDirection(&gpio1, 1, 0xFFFFFFFF); // set BTN GPIO channel tristates to All Input
	while (true) {
		if (mydisp.begin()) {
			xil_printf("mydisp.begin() succeeded\n\r");
			break;
		}
		else {
			xil_printf("mydisp.begin() failed\n\r");
			sleep(1);
		}
	}
	mydisp.clearDisplay(curBackground);
}

void gpioRW() {
	btn = XGpio_DiscreteRead(&gpio1, 1);
	buttons.central = (btn >> 0) & 1;
	buttons.bottom = (btn >> 1) & 1;
	buttons.left = (btn >> 2) & 1;
	buttons.right = (btn >> 3) & 1;
	buttons.up = (btn >> 4) & 1;
	if (sw != XGpio_DiscreteRead(&gpio0, 1))
		lastDown = lastMove;
	sw = XGpio_DiscreteRead(&gpio0, 1);
	curFill = (sw >> 4) & 0x1;
	curTransparency = (sw >> 5) & 0x1;
	if ((sw >> 7) & 0x1) {
		if (buttons.left) {
			if (penState >> 3)
				penState = 0x01;
			else
				penState = penState << 1;
		}
		if (buttons.right) {
			if (penState & 1)
				penState = 0x08;
			else
				penState = penState >> 1;
		}
		XGpio_DiscreteWrite(&gpio0, 2, penState);
		switch (penState) {
		case 0x01:
			curPen = penNull;
			break;
		case 0x02:
			curPen = penDash;
			break;
		case 0x04:
			curPen = penDot;
			break;
		case 0x08:
			curPen = penSolid;
			break;
		case 0x10:
			break;
		case 0x20:
			break;
		case 0x40:
			break;
		case 0x80:
			break;
		default:
			break;
		}
	}
	else if ((sw >> 6) & 0x1) {
		if (buttons.left) {
			if (bkgdState >> 7)
				bkgdState = 0x01;
			else
				bkgdState = bkgdState << 1;
		}
		if (buttons.right) {
			if (bkgdState & 1)
				bkgdState = 0x80;
			else
				bkgdState = bkgdState >> 1;
		}
		XGpio_DiscreteWrite(&gpio0, 2, bkgdState);
		switch (bkgdState) {
		case 0x01:
			curBackground = clrBlack;
			break;
		case 0x02:
			curBackground = (0x80 >> 3) << 11 | (0x80 >> 3) << 6 | (0x80 >> 3);//clrMedGray;
			break;
		case 0x04:
			curBackground = (0xFF >> 3) << 11 | (0x00 >> 3) << 6 | (0xFF >> 3);//clrMagenta;
			break;
		case 0x08:
			curBackground = (0x00 >> 3) << 11 | (0x00 >> 3) << 6 | (0xFF >> 3);//clrBlue;
			break;
		case 0x10:
			curBackground = (0x00 >> 3) << 11 | (0xFF >> 3) << 6 | (0x00 >> 3);//clrGreen;
			break;
		case 0x20:
			curBackground = (0xFF >> 3) << 11 | (0xFF >> 3) << 6 | (0x00 >> 3);//clrYellow;
			break;
		case 0x40:
			curBackground = (0xFF >> 3) << 11 | (0x00 >> 3) << 6 | (0x00 >> 3);//clrRed;
			break;
		case 0x80:
			curBackground = (0xFF >> 3) << 11 | (0xFF >> 3) << 6 | (0xFF >> 3);//clrWhite;
			break;
		default:
			break;
		}
	}
	else {
		if (buttons.left) {
			if (clrState >> 7)
				clrState = 0x01;
			else
				clrState = clrState << 1;
		}
		if (buttons.right) {
			if (clrState & 1)
				clrState = 0x80;
			else
				clrState = clrState >> 1;
		}
		XGpio_DiscreteWrite(&gpio0, 2, clrState);
		switch (clrState) {
		case 0x01:
			curColor = clrBlack;
			break;
		case 0x02:
			curColor = clrMedGray;
			break;
		case 0x04:
			curColor = clrMagenta;
			break;
		case 0x08:
			curColor = clrBlue;
			break;
		case 0x10:
			curColor = clrGreen;
			break;
		case 0x20:
			curColor = clrYellow;
			break;
		case 0x40:
			curColor = clrRed;
			break;
		case 0x80:
			curColor = clrWhite;
			break;
		default:
			break;
		}
	}
}

void checkTouch() {
	MTCH mtch;

	if (mtds.GetMsgStatus() == 0) {
		return;
	}

	mtds.GetMsg((MEVT*)&mtch);

	if ((mtch.msg < msgFingerFirst) || (mtch.msg > msgFingerLast)) {
		return;
	}

	if ((mtch.msg >= msgFinger1Down) && (mtch.msg <= msgFinger1Up)) {
		rgfng[0].x = mtch.xco;
		rgfng[0].y = mtch.yco;
		if (mtch.msg == msgFinger1Down) {
			rgfng[0].st = FINGER_DOWN;
		}
		else if (mtch.msg == msgFinger1Move) {
			rgfng[0].st = FINGER_MOVE;
		}
		else {
			rgfng[0].st = FINGER_UP;
		}
	}

	if ((mtch.msg >= msgFinger2Down) && (mtch.msg <= msgFinger2Up)) {
		rgfng[1].x = mtch.xco;
		rgfng[1].y = mtch.yco;
		if (mtch.msg == msgFinger2Down) {
			rgfng[1].st = FINGER_DOWN;
		}
		else if (mtch.msg == msgFinger2Move) {
			rgfng[1].st = FINGER_MOVE;
		}
		else {
			rgfng[1].st = FINGER_UP;
		}
	}

	if (rgfng[0].st == FINGER_DOWN && prevFng.st == FINGER_UP)
		lastDown = rgfng[0];
	if (prevFng.st == FINGER_MOVE && rgfng[0].st == FINGER_UP)
		lastMove = prevFng;
	prevFng = rgfng[0];
}

void paint() {
	mydisp.setPen(curPen);
	mydisp.setTransparency(curTransparency);
	mydisp.setBackground(curBackground);
	mydisp.setForeground(curColor);

	mydisp.drawEllipse(true, MAX_WIDTH - 30 + 3, MAX_HEIGHT - 30 + 3,
		MAX_WIDTH - 3, MAX_HEIGHT - 3);
	mydisp.setForeground(~curBackground);
	// mydisp.setForeground(curBackground);
	mydisp.drawRectangle(false, MAX_WIDTH - 30, MAX_HEIGHT - 30, MAX_WIDTH - 1,
		MAX_HEIGHT - 1);
	mydisp.setForeground(curColor);

	if (rgfng[0].st == FINGER_DOWN && rgfng[0].x > MAX_WIDTH - 30
		&& rgfng[0].y > MAX_HEIGHT - 30) {
		lastDown = lastMove;
		mydisp.clearDisplay(curBackground);
		return;
	}
	if ((sw & 0xF) == 1) mydisp.setPixel(rgfng[0].x, rgfng[0].y, curColor);
	if (rgfng[0].st == FINGER_UP) {
		switch (sw & 0xF) {
		case 1:

			break;
		case 2:
			mydisp.drawLine(lastDown.x, lastDown.y, lastMove.x, lastMove.y);
			break;
		case 4:
			if (lastMove.x < lastDown.x && lastMove.y < lastDown.y)
				mydisp.drawRectangle(curFill, lastMove.x, lastMove.y,
					lastDown.x, lastDown.y);
			else if (lastMove.x < lastDown.x && lastMove.y > lastDown.y)
				mydisp.drawRectangle(curFill, lastMove.x, lastDown.y,
					lastDown.x, lastMove.y);
			else if (lastMove.x > lastDown.x && lastMove.y < lastDown.y)
				mydisp.drawRectangle(curFill, lastDown.x, lastMove.y,
					lastMove.x, lastDown.y);
			else
				mydisp.drawRectangle(curFill, lastDown.x, lastDown.y,
					lastMove.x, lastMove.y);
			break;
		case 8:
			if (lastMove.x < lastDown.x && lastMove.y < lastDown.y)
				mydisp.drawEllipse(curFill, lastMove.x, lastMove.y, lastDown.x,
					lastDown.y);
			else if (lastMove.x < lastDown.x && lastMove.y > lastDown.y)
				mydisp.drawEllipse(curFill, lastMove.x, lastDown.y, lastDown.x,
					lastMove.y);
			else if (lastMove.x > lastDown.x && lastMove.y < lastDown.y)
				mydisp.drawEllipse(curFill, lastDown.x, lastMove.y, lastMove.x,
					lastDown.y);
			else
				mydisp.drawEllipse(curFill, lastDown.x, lastDown.y, lastMove.x,
					lastMove.y);
			break;

		default:
			break;
		}
	}
}

