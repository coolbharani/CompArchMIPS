.data
list: .word 1,2,3,4,5,6,7,8,9,10
size: .word 10
sum: .word 0
msg: .asciiz "Sum of elements = "
.text
.globl main
main:
	lw $t3, size
	lw $s0, sum
	la $t1, list
	li $t2, 0
loop:
	beq $t2, $t3, end
	lw $s1, ($t1)
	add $s0, $s0, $s1
	addi $t2, $t2 ,1
	addi $t1, $t1 ,4
	j loop
end:
	li $v0, 4
	la $a0, msg
	syscall
	sw $s0, sum
	lw $a0, sum
	li $v0, 1
	syscall
	li $v0, 10
	syscall 

