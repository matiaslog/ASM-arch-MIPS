.text

main:
	addi $2, $zero, 5
	syscall
	

	addi $25, $0, 2
	addi $24, $0, 7 
	addi $22, $0, 1
	
	div $2, $25
	mfhi $10
	
	sub $9 $24, $2
	srl $9, $9, 31
	
	mul $11, $22, $9
	sub $11, $10, $11
	sll $11, $11, 31
	srl $11, $11, 31
	addi $4, $11, 30
	addi $2, $0, 1
	syscall