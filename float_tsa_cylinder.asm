.data 
pi: .float 3.14159
r: .float 0.0
h: .float 0.0
tsa: .float 0.0
msgr: .asciiz "Enter r = "
msgh: .asciiz "Enter h = "
msgtsa: .asciiz "TSA = "
.text
.globl main
main:
	li $v0, 4
	la $a0, msgr
	syscall
	li $v0, 6
	syscall
	s.s $f0, r
	mov.s $f1, $f0 

	li $v0, 4
	la $a0, msgh
	syscall
	li $v0, 6
	syscall
	s.s $f0, h
	mov.s $f2, $f0

	l.s $f3, pi
	li.s $f4, 2.0
	add.s $f5, $f1, $f2
	mul.s $f12, $f3, $f4
	mul.s $f12, $f12, $f1
	mul.s $f12, $f12, $f5

	s.s $f12, tsa
	li $v0, 4
	la $a0, msgtsa
	syscall
	li $v0, 2
	syscall

	li $v0, 10
	syscall 

	