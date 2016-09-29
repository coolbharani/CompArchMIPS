.data
	x: .word 3
	y: .word 5
	answer: .word 0

	p: .float 1.2
	q: .float 3.5
	ans: .float 0.0
.text
.globl main
.ent main
main:
	lw $a0, x
	lw $a1, y
	jal addition
	sw $v0, answer

	l.s $f12, p
	l.s $f14, q
	jal additionf
	s.s $f0, ans

	li $v0, 10
	syscall
.end main

.globl addition
.ent addition
addition:
	add $v0, $a0, $a1
jr $ra
.end addition

.globl additionf
.ent additionf
additionf:
	add.s $f0, $f12, $f14
jr $ra
.end additionf