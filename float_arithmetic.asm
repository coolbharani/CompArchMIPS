.data 
fnum1: .float 6.28318
fnum2: .float 3.14159
fadd: .float 0.0
fsub: .float 0.0
fmul: .float 0.0
fdiv: .float 0.0
dnum1: .double 42.3
dnum2: .double 73.6
dadd: .double 0.0
dsub: .double 0.0
dmul: .double 0.0
ddiv: .double 0.0
msgAdd: .asciiz "\nSum = "
msgSub: .asciiz "\nDifference = "
msgMul: .asciiz "\nProduct = "
msgDiv: .asciiz "\nQuotient = "
.text
.globl main
main:
	l.s $f0, fnum1
	l.s $f1, fnum2
	
	add.s $f12, $f0, $f1
	s.s $f12, fadd
	li $v0, 4
	la $a0, msgAdd
	syscall
	li $v0, 2
	syscall
	
	sub.s $f12, $f0, $f1
	s.s $f12, fsub
	li $v0, 4
	la $a0, msgSub
	syscall
	li $v0, 2
	syscall

	mul.s $f12, $f0, $f1
	s.s $f12, fmul
	li $v0, 4
	la $a0, msgMul
	syscall
	li $v0, 2
	syscall

	div.s $f12, $f0, $f1
	s.s $f12, fdiv
	li $v0, 4
	la $a0, msgDiv
	syscall
	li $v0, 2
	syscall

	l.d $f2, dnum1
	l.d $f4, dnum2
	
	add.d $f12, $f2, $f4
	s.d $f12, dadd
	li $v0, 4
	la $a0, msgAdd
	syscall
	li $v0, 3
	syscall
	
	sub.d $f12, $f2, $f4
	s.d $f12, dsub
	li $v0, 4
	la $a0, msgSub
	syscall
	li $v0, 3
	syscall

	mul.d $f12, $f2, $f4
	s.s $f12, dmul
	li $v0, 4
	la $a0, msgMul
	syscall
	li $v0, 3
	syscall

	div.d $f12, $f2, $f4
	s.s $f12, ddiv
	li $v0, 4
	la $a0, msgDiv
	syscall
	li $v0, 3
	syscall


	li $v0, 10
	syscall
	