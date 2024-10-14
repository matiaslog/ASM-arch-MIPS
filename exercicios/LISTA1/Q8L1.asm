.text

main:
	addi $2, $0, 5
	syscall
	move $10, $2
	
	addi $2, $0, 5
	syscall
	move $11, $2
	
	addi $2, $0, 5
	syscall
	move $12, $2
	
	addi $15, $0,  3600
	addi $16, $0, 60
	
	mult $10, $15
	mflo $10
	
	mult $11, $16
	mflo $11
	
	add $10, $10, $11
	add $4, $10, $12
	addi $2, $0, 1
	syscall
	