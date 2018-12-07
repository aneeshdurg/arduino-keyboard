	.file	"Arduino-keyboard.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB91:
	.file 1 "Arduino-keyboard.c"
	.loc 1 124 0
	.cfi_startproc
	push r10
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r13
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 126 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
.LBB60:
.LBB61:
	.file 2 "/usr/lib/avr/include/avr/wdt.h"
	.loc 2 515 0
/* #APP */
 ;  515 "/usr/lib/avr/include/avr/wdt.h" 1
	in __tmp_reg__,__SREG__
	cli
	wdr
	lds r24,96
	ori r24,24
	sts 96,r24
	sts 96,__zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
.LVL0:
/* #NOAPP */
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	.file 3 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 3 102 0
	ldi r24,lo8(-52)
	mov r10,r24
	mov r11,__zero_reg__
	ldi r24,lo8(103)
	ldi r25,0
	movw r30,r10
	std Z+1,r25
	st Z,r24
	.loc 3 104 0
	ldi r25,lo8(-54)
	mov r14,r25
	mov r15,__zero_reg__
	ldi r18,lo8(6)
	mov r13,r18
	movw r30,r14
	st Z,r13
	.loc 3 105 0
	ldi r16,lo8(-56)
	ldi r17,0
	movw r30,r16
	st Z,__zero_reg__
	.loc 3 106 0
	ldi r28,lo8(-55)
	ldi r29,0
	ldi r24,lo8(24)
	st Y,r24
	.loc 3 108 0
	sbi 0xa,3
	.loc 3 109 0
	sbi 0xb,2
.LVL1:
.LBE63:
.LBE62:
	.loc 1 131 0
	call USB_Init
.LVL2:
	.loc 1 134 0
	ldi r24,lo8(4)
	out 0x25,r24
	.loc 1 137 0
	sbi 0xb,7
	.loc 1 138 0
	sbi 0xa,7
	.loc 1 141 0
	st Y,__zero_reg__
	.loc 1 142 0
	movw r30,r16
	st Z,__zero_reg__
	.loc 1 143 0
	movw r30,r14
	st Z,__zero_reg__
	.loc 1 146 0
	ldi r24,lo8(-49)
	ldi r25,0
	movw r30,r10
	std Z+1,r25
	st Z,r24
	.loc 1 148 0
	movw r30,r14
	st Z,r13
	.loc 1 149 0
	ldi r24,lo8(2)
	movw r30,r16
	st Z,r24
	.loc 1 150 0
	ldi r24,lo8(-104)
	st Y,r24
/* epilogue start */
	.loc 1 151 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE91:
	.size	SetupHardware, .-SetupHardware
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB90:
	.loc 1 108 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 109 0
	call SetupHardware
.LVL3:
.LBB71:
.LBB72:
	.file 4 "Lib/LightweightRingBuff.h"
	.loc 4 87 0
	in r18,__SREG__
.LVL4:
.LBB73:
.LBB74:
	.file 5 "/usr/lib/avr/include/util/atomic.h"
	.loc 5 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL5:
/* #NOAPP */
.LBE74:
.LBE73:
	.loc 4 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 4 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL6:
.LBB75:
.LBB76:
	.loc 5 70 0
	out __SREG__,r18
	.loc 5 71 0
.LVL7:
.LBE76:
.LBE75:
.LBE72:
.LBE71:
	.loc 1 113 0
/* #APP */
 ;  113 "Arduino-keyboard.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L3:
	.loc 1 117 0 discriminator 1
	ldi r24,lo8(Keyboard_HID_Interface)
	ldi r25,hi8(Keyboard_HID_Interface)
	call HID_Device_USBTask
.LVL8:
	.loc 1 118 0 discriminator 1
	call USB_USBTask
.LVL9:
	rjmp .L3
	.cfi_endproc
.LFE90:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_Connect,"ax",@progbits
.global	EVENT_USB_Device_Connect
	.type	EVENT_USB_Device_Connect, @function
EVENT_USB_Device_Connect:
.LFB103:
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE103:
	.size	EVENT_USB_Device_Connect, .-EVENT_USB_Device_Connect
	.section	.text.EVENT_USB_Device_Disconnect,"ax",@progbits
.global	EVENT_USB_Device_Disconnect
	.type	EVENT_USB_Device_Disconnect, @function
EVENT_USB_Device_Disconnect:
.LFB93:
	.loc 1 161 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE93:
	.size	EVENT_USB_Device_Disconnect, .-EVENT_USB_Device_Disconnect
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB94:
	.loc 1 167 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 170 0
	ldi r24,lo8(Keyboard_HID_Interface)
	ldi r25,hi8(Keyboard_HID_Interface)
	call HID_Device_ConfigureEndpoints
.LVL10:
.LBB77:
.LBB78:
	.file 6 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.loc 6 150 0
	ldi r30,lo8(-30)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ret
.LBE78:
.LBE77:
	.cfi_endproc
.LFE94:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB95:
	.loc 1 177 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 178 0
	ldi r24,lo8(Keyboard_HID_Interface)
	ldi r25,hi8(Keyboard_HID_Interface)
	jmp HID_Device_ProcessControlRequest
.LVL11:
	.cfi_endproc
.LFE95:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_USB_Device_StartOfFrame,"ax",@progbits
.global	EVENT_USB_Device_StartOfFrame
	.type	EVENT_USB_Device_StartOfFrame, @function
EVENT_USB_Device_StartOfFrame:
.LFB96:
	.loc 1 183 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL12:
.LBB79:
.LBB80:
	.file 7 "../../LUFA/Drivers/USB/Class/Device/HID.h"
	.loc 7 201 0
	lds r24,Keyboard_HID_Interface+11
	lds r25,Keyboard_HID_Interface+11+1
	sbiw r24,0
	breq .L9
	.loc 7 202 0
	sbiw r24,1
	sts Keyboard_HID_Interface+11+1,r25
	sts Keyboard_HID_Interface+11,r24
.LVL13:
.L9:
	ret
.LBE80:
.LBE79:
	.cfi_endproc
.LFE96:
	.size	EVENT_USB_Device_StartOfFrame, .-EVENT_USB_Device_StartOfFrame
	.section	.text.CALLBACK_HID_Device_CreateHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_CreateHIDReport
	.type	CALLBACK_HID_Device_CreateHIDReport, @function
CALLBACK_HID_Device_CreateHIDReport:
.LFB97:
	.loc 1 203 0
	.cfi_startproc
.LVL14:
	push r16
.LCFI9:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL15:
.LBB97:
.LBB98:
.LBB99:
	.loc 4 111 0
	in r25,__SREG__
.LVL16:
.LBB100:
.LBB101:
	.loc 5 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL17:
/* #NOAPP */
.LBE101:
.LBE100:
	.loc 4 113 0
	lds r24,USARTtoUSB_Buffer+132
.LVL18:
.LBB102:
.LBB103:
	.loc 5 70 0
	out __SREG__,r25
	.loc 5 71 0
.LVL19:
.LBE103:
.LBE102:
.LBE99:
.LBE98:
.LBE97:
	.loc 1 209 0
	cpi r24,lo8(8)
	brlo .L15
	ldi r26,lo8(keyboardData)
	ldi r27,hi8(keyboardData)
.LBB104:
.LBB105:
	.loc 4 184 0
	ldi r22,lo8(USARTtoUSB_Buffer)
	ldi r23,hi8(USARTtoUSB_Buffer)
.LVL20:
.L17:
	lds r30,USARTtoUSB_Buffer+130
	lds r31,USARTtoUSB_Buffer+130+1
	ld r25,Z+
.LVL21:
	.loc 4 186 0
	sts USARTtoUSB_Buffer+130+1,r31
	sts USARTtoUSB_Buffer+130,r30
	subi r30,lo8(USARTtoUSB_Buffer+128)
	sbci r31,hi8(USARTtoUSB_Buffer+128)
	brne .L16
	.loc 4 187 0
	sts USARTtoUSB_Buffer+130+1,r23
	sts USARTtoUSB_Buffer+130,r22
.L16:
.LBB106:
	.loc 4 189 0
	in r20,__SREG__
.LVL22:
.LBB107:
.LBB108:
	.loc 5 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL23:
/* #NOAPP */
.LBE108:
.LBE107:
	.loc 4 191 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r24
.LVL24:
.LBB109:
.LBB110:
	.loc 5 70 0
	out __SREG__,r20
	.loc 5 71 0
.LVL25:
.LBE110:
.LBE109:
.LBE106:
.LBE105:
.LBE104:
	.loc 1 211 0
	st X+,r25
.LVL26:
	.loc 1 210 0
	ldi r30,hi8(keyboardData+8)
	cpi r26,lo8(keyboardData+8)
	cpc r27,r30
	brne .L17
	.loc 1 215 0
	lds r24,ledReport
.LVL27:
.L18:
.LBB111:
.LBB112:
	.loc 3 142 0
	lds r25,200
	sbrs r25,5
	rjmp .L18
	.loc 3 143 0
	sts 206,r24
.LVL28:
.L15:
	ldi r26,lo8(keyboardData)
	ldi r27,hi8(keyboardData)
	movw r30,r18
.LVL29:
.L19:
.LBE112:
.LBE111:
	.loc 1 219 0 discriminator 3
	ld r24,X+
.LVL30:
	st Z+,r24
.LVL31:
	.loc 1 218 0 discriminator 3
	ldi r24,hi8(keyboardData+8)
	cpi r26,lo8(keyboardData+8)
	cpc r27,r24
	brne .L19
	.loc 1 222 0
	ldi r24,lo8(8)
	ldi r25,0
	movw r30,r16
	std Z+1,r25
	st Z,r24
	.loc 1 224 0
	ldi r24,0
/* epilogue start */
	pop r17
	pop r16
.LVL32:
	ret
	.cfi_endproc
.LFE97:
	.size	CALLBACK_HID_Device_CreateHIDReport, .-CALLBACK_HID_Device_CreateHIDReport
	.section	.text.CALLBACK_HID_Device_ProcessHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_ProcessHIDReport
	.type	CALLBACK_HID_Device_ProcessHIDReport, @function
CALLBACK_HID_Device_ProcessHIDReport:
.LFB98:
	.loc 1 239 0
	.cfi_startproc
.LVL33:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 241 0
	movw r30,r18
	ld r24,Z
.LVL34:
	sts ledReport,r24
	ret
	.cfi_endproc
.LFE98:
	.size	CALLBACK_HID_Device_ProcessHIDReport, .-CALLBACK_HID_Device_ProcessHIDReport
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB99:
	.loc 1 248 0
	.cfi_startproc
	push r1
.LCFI11:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI14:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI15:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI17:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 249 0
	lds r24,206
.LVL35:
	.loc 1 251 0
	in r25,0x1e
	cpi r25,lo8(4)
	brne .L25
.LVL36:
.LBB120:
.LBB121:
	.loc 4 161 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
	.loc 4 163 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL37:
	adiw r24,1
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	subi r24,lo8(USARTtoUSB_Buffer+128)
	sbci r25,hi8(USARTtoUSB_Buffer+128)
	brne .L27
	.loc 4 164 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L27:
.LBB122:
	.loc 4 166 0
	in r25,__SREG__
.LVL38:
.LBB123:
.LBB124:
	.loc 5 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL39:
/* #NOAPP */
.LBE124:
.LBE123:
	.loc 4 168 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL40:
.LBB125:
.LBB126:
	.loc 5 70 0
	out __SREG__,r25
	.loc 5 71 0
.LVL41:
.L25:
/* epilogue start */
.LBE126:
.LBE125:
.LBE122:
.LBE121:
.LBE120:
	.loc 1 253 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE99:
	.size	__vector_23, .-__vector_23
.global	ledReport
	.section .bss
	.type	ledReport, @object
	.size	ledReport, 1
ledReport:
	.zero	1
.global	keyboardData
	.type	keyboardData, @object
	.size	keyboardData, 8
keyboardData:
	.zero	8
	.comm	USARTtoUSB_Buffer,133,1
.global	Keyboard_HID_Interface
	.data
	.type	Keyboard_HID_Interface, @object
	.size	Keyboard_HID_Interface, 13
Keyboard_HID_Interface:
	.byte	0
	.byte	1
	.word	8
	.byte	0
	.word	PrevKeyboardHIDReportBuffer
	.byte	8
	.zero	5
	.comm	PrevKeyboardHIDReportBuffer,8,1
	.text
.Letext0:
	.file 8 "/usr/lib/avr/include/stdint.h"
	.file 9 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.file 10 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8e5
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF74
	.byte	0xc
	.long	.LASF75
	.long	.LASF76
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x8
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x8
	.byte	0x80
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x8
	.byte	0x82
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF77
	.byte	0x1
	.long	0x3b
	.byte	0x6
	.byte	0x72
	.long	0xbe
	.uleb128 0x6
	.long	.LASF11
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.uleb128 0x6
	.long	.LASF15
	.byte	0x4
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.byte	0x56
	.long	0x11d
	.uleb128 0x9
	.long	.LASF17
	.byte	0x7
	.byte	0x58
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x7
	.byte	0x5a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF19
	.byte	0x7
	.byte	0x5b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.byte	0x5c
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0x5e
	.long	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x6a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF23
	.uleb128 0x8
	.byte	0x5
	.byte	0x7
	.byte	0x73
	.long	0x157
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x75
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x76
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x77
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.byte	0xd
	.byte	0x7
	.byte	0x54
	.long	0x17c
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x70
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x79
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.long	0xc0
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x7c
	.long	0x157
	.uleb128 0x8
	.byte	0x85
	.byte	0x4
	.byte	0x46
	.long	0x1cf
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x48
	.long	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"In"
	.byte	0x4
	.byte	0x49
	.long	0x1df
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.string	"Out"
	.byte	0x4
	.byte	0x4a
	.long	0x1df
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0xc
	.long	0x30
	.long	0x1df
	.uleb128 0xd
	.long	0x82
	.byte	0x7f
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF32
	.byte	0x4
	.byte	0x4c
	.long	0x18c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF33
	.uleb128 0xf
	.long	.LASF36
	.byte	0x5
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x210
	.uleb128 0x10
	.string	"__s"
	.byte	0x5
	.byte	0x44
	.long	0x210
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x216
	.uleb128 0xa
	.long	0x30
	.uleb128 0x11
	.long	.LASF78
	.byte	0x5
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x12
	.long	.LASF46
	.byte	0x4
	.byte	0x6b
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x268
	.uleb128 0x13
	.long	.LASF30
	.byte	0x4
	.byte	0x6b
	.long	0x26e
	.uleb128 0x14
	.long	.LASF31
	.byte	0x4
	.byte	0x6d
	.long	0x30
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF34
	.byte	0x4
	.byte	0x6f
	.long	0x30
	.uleb128 0x14
	.long	.LASF35
	.byte	0x4
	.byte	0x6f
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x1e5
	.uleb128 0xa
	.long	0x268
	.uleb128 0x16
	.long	.LASF37
	.byte	0x2
	.word	0x1ec
	.byte	0x1
	.byte	0x3
	.long	0x290
	.uleb128 0x15
	.uleb128 0x17
	.long	.LASF38
	.byte	0x2
	.word	0x202
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF79
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.long	0x2b2
	.uleb128 0x13
	.long	.LASF40
	.byte	0x7
	.byte	0xc7
	.long	0x2b8
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x181
	.uleb128 0xa
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF41
	.byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x3
	.long	0x2d6
	.uleb128 0x13
	.long	.LASF42
	.byte	0x3
	.byte	0x8c
	.long	0x2d6
	.byte	0
	.uleb128 0xa
	.long	0x1f0
	.uleb128 0xf
	.long	.LASF43
	.byte	0x4
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0x30c
	.uleb128 0x13
	.long	.LASF30
	.byte	0x4
	.byte	0x55
	.long	0x26e
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF34
	.byte	0x4
	.byte	0x57
	.long	0x30
	.uleb128 0x14
	.long	.LASF35
	.byte	0x4
	.byte	0x57
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF44
	.byte	0x4
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0x348
	.uleb128 0x13
	.long	.LASF30
	.byte	0x4
	.byte	0x9e
	.long	0x26e
	.uleb128 0x13
	.long	.LASF45
	.byte	0x4
	.byte	0x9f
	.long	0x216
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF34
	.byte	0x4
	.byte	0xa6
	.long	0x30
	.uleb128 0x14
	.long	.LASF35
	.byte	0x4
	.byte	0xa6
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF47
	.byte	0x4
	.byte	0xb6
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x388
	.uleb128 0x13
	.long	.LASF30
	.byte	0x4
	.byte	0xb6
	.long	0x26e
	.uleb128 0x14
	.long	.LASF45
	.byte	0x4
	.byte	0xb8
	.long	0x30
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF34
	.byte	0x4
	.byte	0xbd
	.long	0x30
	.uleb128 0x14
	.long	.LASF35
	.byte	0x4
	.byte	0xbd
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x3
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x3ac
	.uleb128 0x13
	.long	.LASF49
	.byte	0x3
	.byte	0x63
	.long	0x3ac
	.uleb128 0x13
	.long	.LASF50
	.byte	0x3
	.byte	0x64
	.long	0x3b1
	.byte	0
	.uleb128 0xa
	.long	0x62
	.uleb128 0xa
	.long	0x11d
	.uleb128 0x19
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.long	.LLST0
	.byte	0x1
	.long	0x423
	.uleb128 0x1a
	.long	0x273
	.long	.LBB60
	.long	.LBE60
	.byte	0x1
	.byte	0x7f
	.long	0x3f3
	.uleb128 0x1b
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x1c
	.long	0x282
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x388
	.long	.LBB62
	.long	.LBE62
	.byte	0x1
	.byte	0x82
	.long	0x419
	.uleb128 0x1d
	.long	0x395
	.long	.LLST1
	.uleb128 0x1d
	.long	0x3a0
	.long	.LLST2
	.byte	0
	.uleb128 0x1e
	.long	.LVL2
	.long	0x8a6
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x42
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4d1
	.uleb128 0x1a
	.long	0x2db
	.long	.LBB71
	.long	.LBE71
	.byte	0x1
	.byte	0x6f
	.long	0x4a2
	.uleb128 0x20
	.long	0x2e8
	.uleb128 0x1b
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x21
	.long	0x2f4
	.long	.LLST3
	.uleb128 0x21
	.long	0x2ff
	.long	.LLST4
	.uleb128 0x22
	.long	0x21b
	.long	.LBB73
	.long	.LBE73
	.byte	0x4
	.byte	0x57
	.uleb128 0x23
	.long	0x1f7
	.long	.LBB75
	.long	.LBE75
	.byte	0x4
	.byte	0x57
	.uleb128 0x24
	.long	0x204
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1123
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL3
	.long	0x3b6
	.uleb128 0x25
	.long	.LVL8
	.long	0x8b4
	.long	0x4c7
	.uleb128 0x26
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_HID_Interface
	.byte	0
	.uleb128 0x1e
	.long	.LVL9
	.long	0x8c1
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	0x4d1
	.long	.LFB93
	.long	.LFE93
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x52f
	.uleb128 0x22
	.long	0x290
	.long	.LBB77
	.long	.LBE77
	.byte	0x1
	.byte	0xac
	.uleb128 0x2a
	.long	.LVL10
	.long	0x8ce
	.uleb128 0x26
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x563
	.uleb128 0x2b
	.long	.LVL11
	.byte	0x1
	.long	0x8db
	.uleb128 0x26
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x593
	.uleb128 0x23
	.long	0x299
	.long	.LBB79
	.long	.LBE79
	.byte	0x1
	.byte	0xb8
	.uleb128 0x20
	.long	0x2a6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	0x11d
	.long	.LFB97
	.long	.LFE97
	.long	.LLST5
	.byte	0x1
	.long	0x72c
	.uleb128 0x2d
	.long	.LASF40
	.byte	0x1
	.byte	0xc6
	.long	0x2b8
	.long	.LLST6
	.uleb128 0x2d
	.long	.LASF55
	.byte	0x1
	.byte	0xc7
	.long	0x72c
	.long	.LLST7
	.uleb128 0x2d
	.long	.LASF56
	.byte	0x1
	.byte	0xc8
	.long	0x216
	.long	.LLST8
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.byte	0xc9
	.long	0xbe
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.byte	0xca
	.long	0x737
	.long	.LLST9
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.byte	0xcc
	.long	0x1df
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x30
	.string	"ind"
	.byte	0x1
	.byte	0xcd
	.long	0x42
	.long	.LLST10
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0xcf
	.long	0x30
	.uleb128 0x1a
	.long	0x228
	.long	.LBB97
	.long	.LBE97
	.byte	0x1
	.byte	0xcf
	.long	0x6a2
	.uleb128 0x24
	.long	0x239
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1b
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x21
	.long	0x244
	.long	.LLST11
	.uleb128 0x1b
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x21
	.long	0x250
	.long	.LLST12
	.uleb128 0x21
	.long	0x25b
	.long	.LLST13
	.uleb128 0x22
	.long	0x21b
	.long	.LBB100
	.long	.LBE100
	.byte	0x4
	.byte	0x6f
	.uleb128 0x23
	.long	0x1f7
	.long	.LBB102
	.long	.LBE102
	.byte	0x4
	.byte	0x6f
	.uleb128 0x1d
	.long	0x204
	.long	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x348
	.long	.LBB104
	.long	.LBE104
	.byte	0x1
	.byte	0xd3
	.long	0x712
	.uleb128 0x20
	.long	0x359
	.uleb128 0x1b
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x21
	.long	0x364
	.long	.LLST15
	.uleb128 0x1b
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x21
	.long	0x370
	.long	.LLST16
	.uleb128 0x21
	.long	0x37b
	.long	.LLST17
	.uleb128 0x22
	.long	0x21b
	.long	.LBB107
	.long	.LBE107
	.byte	0x4
	.byte	0xbd
	.uleb128 0x23
	.long	0x1f7
	.long	.LBB109
	.long	.LBE109
	.byte	0x4
	.byte	0xbd
	.uleb128 0x1d
	.long	0x204
	.long	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x2bd
	.long	.LBB111
	.long	.LBE111
	.byte	0x1
	.byte	0xd7
	.uleb128 0x1d
	.long	0x2ca
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x1df
	.uleb128 0xe
	.byte	0x2
	.long	0x49
	.uleb128 0xa
	.long	0x731
	.uleb128 0x29
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7a4
	.uleb128 0x2d
	.long	.LASF40
	.byte	0x1
	.byte	0xea
	.long	0x2b8
	.long	.LLST20
	.uleb128 0x2e
	.long	.LASF55
	.byte	0x1
	.byte	0xeb
	.long	0x216
	.byte	0x1
	.byte	0x66
	.uleb128 0x2e
	.long	.LASF56
	.byte	0x1
	.byte	0xec
	.long	0x216
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.byte	0xed
	.long	0x7a4
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2e
	.long	.LASF58
	.byte	0x1
	.byte	0xee
	.long	0x7ab
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x7aa
	.uleb128 0x31
	.uleb128 0xa
	.long	0x49
	.uleb128 0x19
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.long	.LLST21
	.byte	0x1
	.long	0x83c
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.byte	0xf9
	.long	0x30
	.long	.LLST22
	.uleb128 0x23
	.long	0x30c
	.long	.LBB120
	.long	.LBE120
	.byte	0x1
	.byte	0xfc
	.uleb128 0x20
	.long	0x319
	.uleb128 0x1d
	.long	0x324
	.long	.LLST23
	.uleb128 0x1b
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x21
	.long	0x330
	.long	.LLST24
	.uleb128 0x21
	.long	0x33b
	.long	.LLST25
	.uleb128 0x22
	.long	0x21b
	.long	.LBB123
	.long	.LBE123
	.byte	0x4
	.byte	0xa6
	.uleb128 0x23
	.long	0x1f7
	.long	.LBB125
	.long	.LBE125
	.byte	0x4
	.byte	0xa6
	.uleb128 0x1d
	.long	0x204
	.long	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x30
	.long	0x84c
	.uleb128 0xd
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x33
	.long	.LASF64
	.byte	0x1
	.byte	0x49
	.long	0x83c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PrevKeyboardHIDReportBuffer
	.uleb128 0x33
	.long	.LASF65
	.byte	0x1
	.byte	0x4f
	.long	0x181
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_HID_Interface
	.uleb128 0x33
	.long	.LASF66
	.byte	0x1
	.byte	0x63
	.long	0x1e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x33
	.long	.LASF67
	.byte	0x1
	.byte	0x65
	.long	0x83c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keyboardData
	.uleb128 0x33
	.long	.LASF68
	.byte	0x1
	.byte	0x66
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ledReport
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF69
	.long	.LASF69
	.byte	0x9
	.word	0x123
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF70
	.long	.LASF70
	.byte	0x7
	.byte	0x95
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF71
	.long	.LASF71
	.byte	0xa
	.byte	0xb2
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF72
	.long	.LASF72
	.byte	0x7
	.byte	0x87
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF73
	.long	.LASF73
	.byte	0x7
	.byte	0x8e
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB91
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LFE91
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x4
	.byte	0xa
	.word	0x2580
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL7
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LFB97
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LFE97
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL18
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE97
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL14
	.long	.LVL20
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LFE97
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL20
	.word	0x1
	.byte	0x64
	.long	.LVL20
	.long	.LFE97
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL14
	.long	.LVL32
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE97
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL28
	.word	0x9
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.long	keyboardData
	.byte	0x1c
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.word	0x9
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.long	keyboardData
	.byte	0x1c
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.word	0xa
	.byte	0x3
	.long	keyboardData
	.byte	0x20
	.byte	0x8a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL31
	.long	.LFE97
	.word	0x9
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.long	keyboardData
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST12:
	.long	.LVL16
	.long	.LVL19
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST13:
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL18
	.long	.LVL20
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1637
	.sleb128 0
	.long	.LVL24
	.long	.LVL28
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1749
	.sleb128 0
	.long	0
	.long	0
.LLST15:
	.long	.LVL21
	.long	.LVL25
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST16:
	.long	.LVL22
	.long	.LVL25
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST17:
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL24
	.long	.LVL28
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1749
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST20:
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LFE98
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LFB99
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI17
	.long	.LFE99
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST22:
	.long	.LVL35
	.long	.LVL37
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LVL36
	.long	.LVL37
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST24:
	.long	.LVL38
	.long	.LVL41
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST25:
	.long	.LVL39
	.long	.LVL40
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL40
	.long	.LVL41
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2047
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB91
	.long	.LFE91
	.long	.LFB90
	.long	.LFE90
	.long	.LFB93
	.long	.LFE93
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	.LFB97
	.long	.LFE97
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"wdt_disable"
.LASF78:
	.string	"__iCliRetVal"
.LASF29:
	.string	"USB_ClassInfo_HID_Device_t"
.LASF62:
	.string	"__vector_23"
.LASF22:
	.string	"PrevReportINBufferSize"
.LASF64:
	.string	"PrevKeyboardHIDReportBuffer"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"ReportINEndpointDoubleBank"
.LASF11:
	.string	"DEVICE_STATE_Unattached"
.LASF13:
	.string	"DEVICE_STATE_Default"
.LASF39:
	.string	"HID_Device_MillisecondElapsed"
.LASF47:
	.string	"RingBuffer_Remove"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF49:
	.string	"BaudRate"
.LASF57:
	.string	"ReportData"
.LASF48:
	.string	"Serial_Init"
.LASF79:
	.string	"USB_Device_EnableSOFEvents"
.LASF5:
	.string	"long int"
.LASF53:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF3:
	.string	"uint16_t"
.LASF67:
	.string	"keyboardData"
.LASF77:
	.string	"USB_Device_States_t"
.LASF54:
	.string	"EVENT_USB_Device_StartOfFrame"
.LASF72:
	.string	"HID_Device_ConfigureEndpoints"
.LASF17:
	.string	"InterfaceNumber"
.LASF74:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr35 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF25:
	.string	"IdleCount"
.LASF35:
	.string	"__ToDo"
.LASF55:
	.string	"ReportID"
.LASF21:
	.string	"PrevReportINBuffer"
.LASF4:
	.string	"unsigned int"
.LASF66:
	.string	"USARTtoUSB_Buffer"
.LASF7:
	.string	"long unsigned int"
.LASF34:
	.string	"sreg_save"
.LASF38:
	.string	"temp_reg"
.LASF19:
	.string	"ReportINEndpointSize"
.LASF15:
	.string	"DEVICE_STATE_Configured"
.LASF73:
	.string	"HID_Device_ProcessControlRequest"
.LASF71:
	.string	"USB_USBTask"
.LASF44:
	.string	"RingBuffer_Insert"
.LASF81:
	.string	"EVENT_USB_Device_Disconnect"
.LASF16:
	.string	"DEVICE_STATE_Suspended"
.LASF65:
	.string	"Keyboard_HID_Interface"
.LASF75:
	.string	"Arduino-keyboard.c"
.LASF10:
	.string	"sizetype"
.LASF61:
	.string	"CALLBACK_HID_Device_ProcessHIDReport"
.LASF69:
	.string	"USB_Init"
.LASF68:
	.string	"ledReport"
.LASF56:
	.string	"ReportType"
.LASF14:
	.string	"DEVICE_STATE_Addressed"
.LASF12:
	.string	"DEVICE_STATE_Powered"
.LASF63:
	.string	"ReceivedByte"
.LASF51:
	.string	"SetupHardware"
.LASF59:
	.string	"datap"
.LASF60:
	.string	"BufferCount"
.LASF23:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"DoubleSpeed"
.LASF18:
	.string	"ReportINEndpointNumber"
.LASF46:
	.string	"RingBuffer_GetCount"
.LASF6:
	.string	"uint32_t"
.LASF33:
	.string	"char"
.LASF28:
	.string	"State"
.LASF26:
	.string	"IdleMSRemaining"
.LASF24:
	.string	"UsingReportProtocol"
.LASF82:
	.string	"CALLBACK_HID_Device_CreateHIDReport"
.LASF36:
	.string	"__iRestore"
.LASF43:
	.string	"RingBuffer_InitBuffer"
.LASF32:
	.string	"RingBuff_t"
.LASF70:
	.string	"HID_Device_USBTask"
.LASF27:
	.string	"Config"
.LASF40:
	.string	"HIDInterfaceInfo"
.LASF30:
	.string	"Buffer"
.LASF58:
	.string	"ReportSize"
.LASF31:
	.string	"Count"
.LASF2:
	.string	"uint8_t"
.LASF45:
	.string	"Data"
.LASF52:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF76:
	.string	"/home/aneesh/Downloads/LUFA 100807/Projects/arduino-keyboard-0.3"
.LASF42:
	.string	"DataByte"
.LASF80:
	.string	"main"
.LASF41:
	.string	"Serial_TxByte"
	.ident	"GCC: (GNU) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
