.data
list: .word 14,22,63,4,75,56,97,38,19
size: .word 9
median: .word 0
msg: .asciiz "Median = "
.text
.globl main
main:
	lw $s7, median
	li $s6, 2
	li $s4, 4
	lw $t3, size
	addi $t5, $t3, -1

	li $t2, 0
loopo:
	beq $t2, $t3, end
	la $t1, list
	li $t4, 0
loopi:
	beq $t4, $t5, L2 
	lw $s1, ($t1)
	lw $s2, 4($t1)
	ble $s1, $s2, L1
	sw $s2, ($t1)
	sw $s1, 4($t1)	
L1:
	addi $t4, $t4 ,1
	addi $t1, $t1 ,4
	j loopi
L2:
	addi $t2, $t2, 1
	j loopo
end:
	li $v0, 4
	la $a0, msg
	syscall
	la $t1, list
	div $s5, $t3, $s6
	mul $s5, $s5, $s4
	add $t1, $t1, $s5
	lw $s7, ($t1)
	sw $s7, median 
	lw $a0, median
	li $v0, 1
	syscall
	li $v0, 10
	syscall 