.data
L1: .word 0x1234
L2: .word 0x3456
Res:  .space 4

.text
.globl main
main:   lw $t0,L1($0)
        lw $t1,L2($0)
		and $t2,$t0,$t1
	 	or $t3,$t0,$t1
		sw $t3,Res($0)
		li $v0,10
		syscall