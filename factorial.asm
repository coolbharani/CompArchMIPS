.data 
fact: .word 1
msg1: .asciiz "n! = "
msg2: .asciiz "Enter n: "

.text
.globl main
main:
	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 5
	syscall

	move $t0, $v0
	lw $t1, fact
	li $t2, 1

	li $v0, 4
	la $a0, msg1
	syscall
loop:
	bgt $t2, $t0, end
	mul $t1, $t1, $t2
	addi $t2, $t2, 1
	b loop
end:
	sw $t1, fact
	li $v0, 1
	lw $a0, fact
	syscall
	li $v0, 10
	syscall 