.text

main:
	addi $2, $0, 5
	syscall
	
	addi $8, $0, 3600
	addi $9, $0, 60
	
	div $2, $8
	mflo $4
	mfhi $11
	
	div $11, $9
	mflo $11
	mfhi $12
	
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 1
	move $4, $11
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 1
	move $4, $12
	syscall
	
	