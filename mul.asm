.globl main
.text
main:
	li $t2,10
	li $t3,10
	mult $t2,$t3
	li $v0,10
	syscall