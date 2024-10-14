.text

main:
	addi $v0, $zero, 5
	syscall
	move $t2, $v0
	
	addi $v0, $zero, 5
	syscall
	
	mult $v0, $t2
	mflo $a0
	addi $v0, $zero, 1
	syscall
		
	addi $a0, $zero, '.'
	addi $v0, $zero, 11
	syscall
	
	mfhi $a0
	addi $v0, $zero, 1
	syscall