.data 
A: .word 73
B: .word 14
C: .word 16
V: .word 0
SA: .word 0
msg1: .asciiz "Volume is "
msg2: .asciiz "\nSA is "

.text
.globl main
main: 
	lw $t0, A
	lw $t1, B
	lw $t2, C

	mul $t3, $t0, $t1
	mul $t3, $t3, $t2
	sw $t3, V

	mul $t4, $t0, $t1
	mul $t5, $t1, $t2
	mul $t6, $t0, $t2
	add $t4, $t4, $t5
	add $t4, $t4, $t6
	li $t7, 2
	mul $t4, $t4, $t7
	sw $t4, SA

	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 1
	lw $a0, V
	syscall

	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	lw $a0, SA
	syscall

	li $v0, 10
	syscall