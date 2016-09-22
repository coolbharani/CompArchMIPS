.data 
n: .word 5
sum: .word 0
msg1: .asciiz "Sum of squares = "

.text
.globl main
main:
	lw $t0, n
	lw $t1, sum
loop: 
	beq $t0, $zero, end
	mul $t2, $t0, $t0
	add $t1, $t1, $t2
	addi $t0, $t0, -1
	b loop
end:
	sw $t1, sum
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 1
	lw $a0, sum
	syscall

	li $v0, 10
	syscall
