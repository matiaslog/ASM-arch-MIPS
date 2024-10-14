.text

data:
	addi $2, $0, 5
	syscall
	move $10, $2
	
	addi $2, $0, 5
	syscall
	move $11, $2
	
	add $12, $10, $11
	addi $13, $0, 2
	
	div $12, $13
	
	mflo $4
	addi $2, $zero, 1
	syscall
