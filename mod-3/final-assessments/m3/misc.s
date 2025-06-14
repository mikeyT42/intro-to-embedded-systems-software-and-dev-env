	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "misc.c"
	.global	g5
	.data
	.align	2
	.type	g5, %object
	.size	g5, 40
g5:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Hello World!\012\000"
	.text
	.align	1
	.global	func
	.syntax unified
	.thumb
	.thumb_func
	.type	func, %function
func:
.LFB0:
	.loc 1 27 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 29 16
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 30 19
	ldr	r3, .L5
	str	r3, [r7, #8]
	.loc 1 32 5
	ldr	r3, .L5+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L5+4
	str	r3, [r2]
	.loc 1 33 12
	ldr	r3, .L5+4
	ldr	r3, [r3]
	lsls	r3, r3, #2
	ldr	r2, .L5+8
	add	r3, r3, r2
	.loc 1 33 18
	ldr	r2, [r7, #12]
	str	r2, [r3]
	.loc 1 35 11
	movs	r3, #0
	str	r3, [r7, #12]
	.loc 1 35 3
	b	.L2
.L3:
	.loc 1 37 16 discriminator 3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]
	uxtb	r3, r3
	mov	r1, r3
	.loc 1 37 12 discriminator 3
	ldr	r2, .L5+8
	ldr	r3, [r7, #12]
	str	r1, [r2, r3, lsl #2]
	.loc 1 38 7 discriminator 3
	ldr	r3, .L5+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L5+4
	str	r3, [r2]
	.loc 1 35 35 discriminator 3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	.loc 1 35 19 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #5
	bls	.L3
	.loc 1 41 10
	ldr	r3, .L5+4
	ldr	r3, [r3]
	.loc 1 42 1
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	f2.0
	.word	g5
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.bss
	.align	2
f2.0:
	.space	4
	.size	f2.0, 4
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xbb
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0xc
	.4byte	.LASF3
	.4byte	.LASF4
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.4byte	0x3d
	.4byte	0x36
	.uleb128 0x6
	.4byte	0x36
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.ascii	"g5\000"
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.4byte	0x26
	.uleb128 0x5
	.byte	0x3
	.4byte	g5
	.uleb128 0x9
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x3d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8
	.uleb128 0xa
	.ascii	"f1\000"
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.ascii	"f2\000"
	.byte	0x1c
	.byte	0xe
	.4byte	0x3d
	.uleb128 0x5
	.byte	0x3
	.4byte	f2.0
	.uleb128 0x1
	.ascii	"f3\000"
	.byte	0x1d
	.byte	0x10
	.4byte	0x36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.ascii	"f4\000"
	.byte	0x1e
	.byte	0x13
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.4byte	0x3d
	.uleb128 0x3
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0xb
	.4byte	0xb2
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF0:
	.ascii	"unsigned int\000"
.LASF5:
	.ascii	"func\000"
.LASF3:
	.ascii	"misc.c\000"
.LASF4:
	.ascii	"/home/mtorres/Coursera/intro-to-embedded-systems-so"
	.ascii	"ftware-and-dev-env/mod-3/final-assessments/m3\000"
.LASF1:
	.ascii	"char\000"
.LASF2:
	.ascii	"GNU C99 12.2.1 20221205 -mthumb -mcpu=cortex-m4 -mf"
	.ascii	"loat-abi=hard -mfpu=fpv4-sp-d16 -march=armv7e-m+fp "
	.ascii	"-g -O0 -std=c99\000"
	.ident	"GCC: (15:12.2.rel1-1) 12.2.1 20221205"
