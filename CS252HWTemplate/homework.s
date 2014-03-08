//
//  homework.s
//  CS252HWTemplate
//
//  Created by Henry T Kirk on 3/8/14.
//  Copyright (c) 2014 Henry T Kirk. All rights reserved.
//

// Routine to add two numbers
	.globl	_add2
    .align	2
    .text
_add2:
    stmfd   sp!, {r4-r7, lr}
	add     r0, r0, r1      @ add the two numbers
    ldmfd   sp!, {r4-r7, pc}