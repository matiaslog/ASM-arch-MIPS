.text

main:
	addi $2, $0, 5
	syscall
	
	sll $10, $2, 31
	srl $10, $10, 31
	
	addi $11, $0, -1
	mul $4, $10, $11
	
	addi $2, $0, 1
	syscall