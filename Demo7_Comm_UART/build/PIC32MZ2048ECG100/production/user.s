	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.align	2
	.globl	InitGPIO
.LFB4 = .
	.file 1 "d:/onedrive/kpi/pic/demo7_comm_uart/user.c"
	.loc 1 19 0
	.set	nomips16
	.set	nomicromips
	.ent	InitGPIO
	.type	InitGPIO, @function
InitGPIO:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI0 = .
	sw	$fp,4($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	.loc 1 23 0
	lui	$3,%hi(ANSELG)
	lhu	$2,%lo(ANSELG)($3)
	ins	$2,$0,6,1
	sh	$2,%lo(ANSELG)($3)
	.loc 1 24 0
	lui	$3,%hi(ANSELB)
	lhu	$2,%lo(ANSELB)($3)
	ins	$2,$0,11,1
	sh	$2,%lo(ANSELB)($3)
	.loc 1 25 0
	lui	$3,%hi(ANSELG)
	lhu	$2,%lo(ANSELG)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(ANSELG)($3)
	.loc 1 27 0
	lui	$3,%hi(TRISG)
	lhu	$2,%lo(TRISG)($3)
	ins	$2,$0,6,1
	sh	$2,%lo(TRISG)($3)
	.loc 1 28 0
	lui	$3,%hi(TRISB)
	lhu	$2,%lo(TRISB)($3)
	ins	$2,$0,11,1
	sh	$2,%lo(TRISB)($3)
	.loc 1 29 0
	lui	$3,%hi(TRISG)
	lhu	$2,%lo(TRISG)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(TRISG)($3)
	.loc 1 30 0
	lui	$3,%hi(TRISD)
	lhu	$2,%lo(TRISD)($3)
	ins	$2,$0,4,1
	sh	$2,%lo(TRISD)($3)
	.loc 1 33 0
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	ins	$2,$0,6,1
	sh	$2,%lo(LATG)($3)
	.loc 1 34 0
	lui	$3,%hi(LATD)
	lhu	$2,%lo(LATD)($3)
	ins	$2,$0,4,1
	sh	$2,%lo(LATD)($3)
	.loc 1 35 0
	lui	$3,%hi(LATB)
	lhu	$2,%lo(LATB)($3)
	ins	$2,$0,11,1
	sh	$2,%lo(LATB)($3)
	.loc 1 36 0
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(LATG)($3)
	.loc 1 40 0
	lui	$3,%hi(ANSELA)
	lhu	$2,%lo(ANSELA)($3)
	ins	$2,$0,5,1
	sh	$2,%lo(ANSELA)($3)
	.loc 1 42 0
	lui	$3,%hi(TRISA)
	lhu	$2,%lo(TRISA)($3)
	li	$4,1			# 0x1
	ins	$2,$4,5,1
	sh	$2,%lo(TRISA)($3)
	.loc 1 43 0
	lui	$3,%hi(TRISA)
	lhu	$2,%lo(TRISA)($3)
	li	$4,1			# 0x1
	ins	$2,$4,4,1
	sh	$2,%lo(TRISA)($3)
	.loc 1 45 0
	lui	$2,%hi(TRISDCLR)
	li	$3,2048			# 0x800
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 46 0
	move	$sp,$fp
.LCFI3 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	InitGPIO
.LFE4:
	.size	InitGPIO, .-InitGPIO
	.align	2
	.globl	InitApp
.LFB5 = .
	.loc 1 48 0
	.set	nomips16
	.set	nomicromips
	.ent	InitApp
	.type	InitApp, @function
InitApp:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI4 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	.loc 1 50 0
	jal	InitGPIO
	nop

	.loc 1 51 0
	jal	UART4_init
	nop

	.loc 1 52 0
	move	$sp,$fp
.LCFI7 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	InitApp
.LFE5:
	.size	InitApp, .-InitApp
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE2:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v2.10/pic32mx/include/proc/p32mz2048efg100.h"
	.file 3 "c:/program files (x86)/microchip/xc32/v2.10/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0xf33
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v2.10\000"
	.byte	0x1
	.ascii	"user.c\000"
	.ascii	"D:/OneDrive/KPI/PIC/Demo7_Comm_UART\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii	"short unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.ascii	"__uint32_t\000"
	.byte	0x3
	.byte	0x33
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2bed
	.4byte	0x170
	.uleb128 0x5
	.ascii	"ANSA0\000"
	.byte	0x2
	.2byte	0x2bee
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSA1\000"
	.byte	0x2
	.2byte	0x2bef
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSA5\000"
	.byte	0x2
	.2byte	0x2bf1
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSA9\000"
	.byte	0x2
	.2byte	0x2bf3
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSA10\000"
	.byte	0x2
	.2byte	0x2bf4
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2bf6
	.4byte	0x18a
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2bf7
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x2bec
	.4byte	0x19e
	.uleb128 0x7
	.4byte	0x101
	.uleb128 0x7
	.4byte	0x170
	.byte	0
	.uleb128 0x8
	.ascii	"__ANSELAbits_t\000"
	.byte	0x2
	.2byte	0x2bf9
	.4byte	0x18a
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2c01
	.4byte	0x2be
	.uleb128 0x5
	.ascii	"TRISA0\000"
	.byte	0x2
	.2byte	0x2c02
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA1\000"
	.byte	0x2
	.2byte	0x2c03
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA2\000"
	.byte	0x2
	.2byte	0x2c04
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA3\000"
	.byte	0x2
	.2byte	0x2c05
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA4\000"
	.byte	0x2
	.2byte	0x2c06
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA5\000"
	.byte	0x2
	.2byte	0x2c07
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA6\000"
	.byte	0x2
	.2byte	0x2c08
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA7\000"
	.byte	0x2
	.2byte	0x2c09
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA9\000"
	.byte	0x2
	.2byte	0x2c0b
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA10\000"
	.byte	0x2
	.2byte	0x2c0c
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA14\000"
	.byte	0x2
	.2byte	0x2c0e
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISA15\000"
	.byte	0x2
	.2byte	0x2c0f
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2c11
	.4byte	0x2d8
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2c12
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x2c00
	.4byte	0x2ec
	.uleb128 0x7
	.4byte	0x1b5
	.uleb128 0x7
	.4byte	0x2be
	.byte	0
	.uleb128 0x8
	.ascii	"__TRISAbits_t\000"
	.byte	0x2
	.2byte	0x2c14
	.4byte	0x2d8
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2d2c
	.4byte	0x452
	.uleb128 0x5
	.ascii	"ANSB0\000"
	.byte	0x2
	.2byte	0x2d2d
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB1\000"
	.byte	0x2
	.2byte	0x2d2e
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB2\000"
	.byte	0x2
	.2byte	0x2d2f
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB3\000"
	.byte	0x2
	.2byte	0x2d30
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB4\000"
	.byte	0x2
	.2byte	0x2d31
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB5\000"
	.byte	0x2
	.2byte	0x2d32
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB6\000"
	.byte	0x2
	.2byte	0x2d33
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB7\000"
	.byte	0x2
	.2byte	0x2d34
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB8\000"
	.byte	0x2
	.2byte	0x2d35
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB9\000"
	.byte	0x2
	.2byte	0x2d36
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB10\000"
	.byte	0x2
	.2byte	0x2d37
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB11\000"
	.byte	0x2
	.2byte	0x2d38
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB12\000"
	.byte	0x2
	.2byte	0x2d39
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB13\000"
	.byte	0x2
	.2byte	0x2d3a
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB14\000"
	.byte	0x2
	.2byte	0x2d3b
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSB15\000"
	.byte	0x2
	.2byte	0x2d3c
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2d3e
	.4byte	0x46c
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2d3f
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x2d2b
	.4byte	0x480
	.uleb128 0x7
	.4byte	0x302
	.uleb128 0x7
	.4byte	0x452
	.byte	0
	.uleb128 0x8
	.ascii	"__ANSELBbits_t\000"
	.byte	0x2
	.2byte	0x2d41
	.4byte	0x46c
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2d49
	.4byte	0x5f7
	.uleb128 0x5
	.ascii	"TRISB0\000"
	.byte	0x2
	.2byte	0x2d4a
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB1\000"
	.byte	0x2
	.2byte	0x2d4b
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB2\000"
	.byte	0x2
	.2byte	0x2d4c
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB3\000"
	.byte	0x2
	.2byte	0x2d4d
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB4\000"
	.byte	0x2
	.2byte	0x2d4e
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB5\000"
	.byte	0x2
	.2byte	0x2d4f
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB6\000"
	.byte	0x2
	.2byte	0x2d50
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB7\000"
	.byte	0x2
	.2byte	0x2d51
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB8\000"
	.byte	0x2
	.2byte	0x2d52
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB9\000"
	.byte	0x2
	.2byte	0x2d53
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB10\000"
	.byte	0x2
	.2byte	0x2d54
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB11\000"
	.byte	0x2
	.2byte	0x2d55
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB12\000"
	.byte	0x2
	.2byte	0x2d56
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB13\000"
	.byte	0x2
	.2byte	0x2d57
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB14\000"
	.byte	0x2
	.2byte	0x2d58
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISB15\000"
	.byte	0x2
	.2byte	0x2d59
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2d5b
	.4byte	0x611
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2d5c
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x2d48
	.4byte	0x625
	.uleb128 0x7
	.4byte	0x497
	.uleb128 0x7
	.4byte	0x5f7
	.byte	0
	.uleb128 0x8
	.ascii	"__TRISBbits_t\000"
	.byte	0x2
	.2byte	0x2d5e
	.4byte	0x611
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2d83
	.4byte	0x78b
	.uleb128 0x5
	.ascii	"LATB0\000"
	.byte	0x2
	.2byte	0x2d84
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB1\000"
	.byte	0x2
	.2byte	0x2d85
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB2\000"
	.byte	0x2
	.2byte	0x2d86
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB3\000"
	.byte	0x2
	.2byte	0x2d87
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB4\000"
	.byte	0x2
	.2byte	0x2d88
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB5\000"
	.byte	0x2
	.2byte	0x2d89
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB6\000"
	.byte	0x2
	.2byte	0x2d8a
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB7\000"
	.byte	0x2
	.2byte	0x2d8b
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB8\000"
	.byte	0x2
	.2byte	0x2d8c
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB9\000"
	.byte	0x2
	.2byte	0x2d8d
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB10\000"
	.byte	0x2
	.2byte	0x2d8e
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB11\000"
	.byte	0x2
	.2byte	0x2d8f
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB12\000"
	.byte	0x2
	.2byte	0x2d90
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB13\000"
	.byte	0x2
	.2byte	0x2d91
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB14\000"
	.byte	0x2
	.2byte	0x2d92
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATB15\000"
	.byte	0x2
	.2byte	0x2d93
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2d95
	.4byte	0x7a5
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2d96
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x2d82
	.4byte	0x7b9
	.uleb128 0x7
	.4byte	0x63b
	.uleb128 0x7
	.4byte	0x78b
	.byte	0
	.uleb128 0x8
	.ascii	"__LATBbits_t\000"
	.byte	0x2
	.2byte	0x2d98
	.4byte	0x7a5
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2fa5
	.4byte	0x8ef
	.uleb128 0x5
	.ascii	"TRISD0\000"
	.byte	0x2
	.2byte	0x2fa6
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD1\000"
	.byte	0x2
	.2byte	0x2fa7
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD2\000"
	.byte	0x2
	.2byte	0x2fa8
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD3\000"
	.byte	0x2
	.2byte	0x2fa9
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD4\000"
	.byte	0x2
	.2byte	0x2faa
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD5\000"
	.byte	0x2
	.2byte	0x2fab
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD9\000"
	.byte	0x2
	.2byte	0x2fad
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD10\000"
	.byte	0x2
	.2byte	0x2fae
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD11\000"
	.byte	0x2
	.2byte	0x2faf
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD12\000"
	.byte	0x2
	.2byte	0x2fb0
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD13\000"
	.byte	0x2
	.2byte	0x2fb1
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD14\000"
	.byte	0x2
	.2byte	0x2fb2
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISD15\000"
	.byte	0x2
	.2byte	0x2fb3
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2fb5
	.4byte	0x909
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2fb6
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x2fa4
	.4byte	0x91d
	.uleb128 0x7
	.4byte	0x7ce
	.uleb128 0x7
	.4byte	0x8ef
	.byte	0
	.uleb128 0x8
	.ascii	"__TRISDbits_t\000"
	.byte	0x2
	.2byte	0x2fb8
	.4byte	0x909
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2fdb
	.4byte	0xa47
	.uleb128 0x5
	.ascii	"LATD0\000"
	.byte	0x2
	.2byte	0x2fdc
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD1\000"
	.byte	0x2
	.2byte	0x2fdd
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD2\000"
	.byte	0x2
	.2byte	0x2fde
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD3\000"
	.byte	0x2
	.2byte	0x2fdf
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD4\000"
	.byte	0x2
	.2byte	0x2fe0
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD5\000"
	.byte	0x2
	.2byte	0x2fe1
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD9\000"
	.byte	0x2
	.2byte	0x2fe3
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD10\000"
	.byte	0x2
	.2byte	0x2fe4
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD11\000"
	.byte	0x2
	.2byte	0x2fe5
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD12\000"
	.byte	0x2
	.2byte	0x2fe6
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD13\000"
	.byte	0x2
	.2byte	0x2fe7
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD14\000"
	.byte	0x2
	.2byte	0x2fe8
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATD15\000"
	.byte	0x2
	.2byte	0x2fe9
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x2feb
	.4byte	0xa61
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2fec
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x2fda
	.4byte	0xa75
	.uleb128 0x7
	.4byte	0x933
	.uleb128 0x7
	.4byte	0xa47
	.byte	0
	.uleb128 0x8
	.ascii	"__LATDbits_t\000"
	.byte	0x2
	.2byte	0x2fee
	.4byte	0xa61
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x32ee
	.4byte	0xaf9
	.uleb128 0x5
	.ascii	"ANSG6\000"
	.byte	0x2
	.2byte	0x32f0
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSG7\000"
	.byte	0x2
	.2byte	0x32f1
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSG8\000"
	.byte	0x2
	.2byte	0x32f2
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSG9\000"
	.byte	0x2
	.2byte	0x32f3
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"ANSG15\000"
	.byte	0x2
	.2byte	0x32f5
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x32f7
	.4byte	0xb13
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x32f8
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x32ed
	.4byte	0xb27
	.uleb128 0x7
	.4byte	0xa8a
	.uleb128 0x7
	.4byte	0xaf9
	.byte	0
	.uleb128 0x8
	.ascii	"__ANSELGbits_t\000"
	.byte	0x2
	.2byte	0x32fa
	.4byte	0xb13
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x3302
	.4byte	0xc1e
	.uleb128 0x5
	.ascii	"TRISG0\000"
	.byte	0x2
	.2byte	0x3303
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG1\000"
	.byte	0x2
	.2byte	0x3304
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG6\000"
	.byte	0x2
	.2byte	0x3306
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG7\000"
	.byte	0x2
	.2byte	0x3307
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG8\000"
	.byte	0x2
	.2byte	0x3308
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG9\000"
	.byte	0x2
	.2byte	0x3309
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG12\000"
	.byte	0x2
	.2byte	0x330b
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG13\000"
	.byte	0x2
	.2byte	0x330c
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG14\000"
	.byte	0x2
	.2byte	0x330d
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"TRISG15\000"
	.byte	0x2
	.2byte	0x330e
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x3310
	.4byte	0xc38
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x3311
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x3301
	.4byte	0xc4c
	.uleb128 0x7
	.4byte	0xb3e
	.uleb128 0x7
	.4byte	0xc1e
	.byte	0
	.uleb128 0x8
	.ascii	"__TRISGbits_t\000"
	.byte	0x2
	.2byte	0x3313
	.4byte	0xc38
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x3334
	.4byte	0xd38
	.uleb128 0x5
	.ascii	"LATG0\000"
	.byte	0x2
	.2byte	0x3335
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG1\000"
	.byte	0x2
	.2byte	0x3336
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG6\000"
	.byte	0x2
	.2byte	0x3338
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG7\000"
	.byte	0x2
	.2byte	0x3339
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG8\000"
	.byte	0x2
	.2byte	0x333a
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG9\000"
	.byte	0x2
	.2byte	0x333b
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG12\000"
	.byte	0x2
	.2byte	0x333d
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG13\000"
	.byte	0x2
	.2byte	0x333e
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG14\000"
	.byte	0x2
	.2byte	0x333f
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.ascii	"LATG15\000"
	.byte	0x2
	.2byte	0x3340
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.2byte	0x3342
	.4byte	0xd52
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x3343
	.4byte	0xb4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.2byte	0x3333
	.4byte	0xd66
	.uleb128 0x7
	.4byte	0xc62
	.uleb128 0x7
	.4byte	0xd38
	.byte	0
	.uleb128 0x8
	.ascii	"__LATGbits_t\000"
	.byte	0x2
	.2byte	0x3345
	.4byte	0xd52
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x9
	.byte	0x1
	.ascii	"InitGPIO\000"
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.ascii	"InitApp\000"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xde8
	.uleb128 0xb
	.byte	0x1
	.ascii	"UART4_init\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xad
	.byte	0x1
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii	"ANSELAbits\000"
	.byte	0x2
	.2byte	0x2bfa
	.ascii	"ANSELA\000"
	.4byte	0xe04
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x19e
	.uleb128 0xd
	.ascii	"TRISAbits\000"
	.byte	0x2
	.2byte	0x2c15
	.ascii	"TRISA\000"
	.4byte	0xe23
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x2ec
	.uleb128 0xd
	.ascii	"ANSELBbits\000"
	.byte	0x2
	.2byte	0x2d42
	.ascii	"ANSELB\000"
	.4byte	0xe44
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x480
	.uleb128 0xd
	.ascii	"TRISBbits\000"
	.byte	0x2
	.2byte	0x2d5f
	.ascii	"TRISB\000"
	.4byte	0xe63
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x625
	.uleb128 0xd
	.ascii	"LATBbits\000"
	.byte	0x2
	.2byte	0x2d99
	.ascii	"LATB\000"
	.4byte	0xe80
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x7b9
	.uleb128 0xd
	.ascii	"TRISDbits\000"
	.byte	0x2
	.2byte	0x2fb9
	.ascii	"TRISD\000"
	.4byte	0xe9f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x91d
	.uleb128 0xf
	.ascii	"TRISDCLR\000"
	.byte	0x2
	.2byte	0x2fba
	.4byte	0xeb7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xb4
	.uleb128 0xd
	.ascii	"LATDbits\000"
	.byte	0x2
	.2byte	0x2fef
	.ascii	"LATD\000"
	.4byte	0xed4
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xa75
	.uleb128 0xd
	.ascii	"ANSELGbits\000"
	.byte	0x2
	.2byte	0x32fb
	.ascii	"ANSELG\000"
	.4byte	0xef5
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xb27
	.uleb128 0xd
	.ascii	"TRISGbits\000"
	.byte	0x2
	.2byte	0x3314
	.ascii	"TRISG\000"
	.4byte	0xf14
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xc4c
	.uleb128 0xd
	.ascii	"LATGbits\000"
	.byte	0x2
	.2byte	0x3346
	.ascii	"LATG\000"
	.4byte	0xf31
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xd66
	.byte	0
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
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
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,info
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v2.10"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words