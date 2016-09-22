.data 
A: .float 0.0
B: .float 0.0
C: .float 0.0
X: .float 0.0
val: .float 0.0
msgA: .asciiz "Enter A = "
msgB: .asciiz "Enter B = "
msgC: .asciiz "Enter C = "
msgX: .asciiz "Enter X = "
msg: .asciiz "Value = "

.text
.globl main
main:
	li $v0, 4
	la $a0, msgA
	syscall
	li $v0, 6
	syscall
	s.s $f0, A
	mov.s $f1, $f0 

	li $v0, 4
	la $a0, msgB
	syscall
	li $v0, 6
	syscall
	s.s $f0, B
	mov.s $f2, $f0

	li $v0, 4
	la $a0, msgC
	syscall
	li $v0, 6
	syscall
	s.s $f0, C
	mov.s $f3, $f0

	li $v0, 4
	la $a0, msgX
	syscall
	li $v0, 6
	syscall
	s.s $f0, X
	mov.s $f4, $f0

	mul.s $f5, $f1, $f4
	mul.s $f5, $f5, $f4
	mul.s $f6, $f2, $f4
	add.s $f12, $f5, $f6
	add.s $f12, $f12, $f3

	s.s $f12, val
	li $v0, 2
	syscall

	li $v0, 10
	syscall