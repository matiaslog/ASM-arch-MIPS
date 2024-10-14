.text

main:
	addi $2, $0, 5
	syscall
	
	sll $10, $2, 31
	srl $4, $10, 31
	
	addi $2, $0, 1
	syscall