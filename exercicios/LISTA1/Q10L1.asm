.text

main:
	addi $2, $zero, 12
	syscall
	move $10, $2
	
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	
	addi $4, $10, -32
	syscall