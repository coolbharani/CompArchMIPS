.data
list: .word 1,2,3,4,5,6,7,8,9,10
size: .word 10
tab: .asciiz "\t"
.text
.globl main
main:
	lw $t3, size
	la $t1, list
	li $t2, 0
loop:
	beq $t2, $t3, end
	lw $a0, ($t1)
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, tab
	syscall
	addi $t2, $t2 ,1
	addi $t1, $t1 ,4
	j loop
end:
	li $v0, 10
	syscall 

