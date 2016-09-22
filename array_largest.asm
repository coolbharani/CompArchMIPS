.data
list: .word 1,2,3,4,5,6,7,8,9,10
size: .word 10
largest: .word 0
msg: .asciiz "Largest element = "
.text
.globl main
main:
	lw $t3, size
	la $t1, list
	lw $s0, ($t1)
	li $t2, 0
loop:
	beq $t2, $t3, end
	lw $s1, ($t1)
	bge $s0,$s1, G
	move $s0, $s1
G:
	addi $t2, $t2 ,1
	addi $t1, $t1 ,4
	j loop
end:
	li $v0, 4
	la $a0, msg
	syscall
	sw $s0, largest
	lw $a0, largest
	li $v0, 1
	syscall
	li $v0, 10
	syscall 

