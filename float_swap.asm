.data 
fnum1: .float 6.28318
fnum2: .float 3.14159
msg1: .asciiz "\nBefore Swap = "
msg2: .asciiz "\nAfter Swap = "

.text
.globl main
main:
	l.s $f0, fnum1
	l.s $f1, fnum2
	li $v0, 4
	la $a0, msg1
	syscall
	mov.s $f12, $f0
	li $v0, 2
	syscall
	mov.s $f12, $f1
	li $v0, 2
	syscall

	mov.s $f1, $f0
	mov.s $f0, $f12
	li $v0, 4
	la $a0, msg2
	syscall
	mov.s $f12, $f0
	li $v0, 2
	syscall
	mov.s $f12, $f1
	li $v0, 2
	syscall

	li $v0, 10
	syscall