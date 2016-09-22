.data 
n: .word 5

msg1: .asciiz "Fibonacii series:"

.text
.globl main
main:
	lw $t0, n
	li $t1, -1
	li $t2, 1

	li $v0, 4
	la $a0, msg1
	syscall

loop:
	beq $t0, $zero, end
	li $v0, 1
	add $t3, $t2, $t1
	move $a0, $t3
	syscall
	addi $t0, $t0, -1
	move $t1, $t2
	move $t2, $t3
	b loop

end:
	li $v0, 10
	syscall