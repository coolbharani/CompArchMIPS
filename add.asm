.globl main
.text
main:
	li $t2,10
	li $t3,20
	add $t4,$t2,$t3
	li $v0,10
	syscall