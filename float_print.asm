.data 
	val: .float 123.33
	lfeed: .asciiz "\n" 
.text
.globl main
main:
	l.s $f12, val
	li $v0, 2
	syscall

	li $v0, 4
	la $a0, lfeed
	syscall

	lw $a0, val
	li $v0, 1
	syscall

	li $v0, 10
	syscall