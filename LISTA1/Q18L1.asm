.text

main:

	addi $2, $zero, 5
	syscall
	move $8, $2
	addi $2, $zero, 5
	syscall
	move $9, $2
	
	sub $10, $8, $9
	srl $11, $10, 31
	mul $12, $10, $11
	add $4, $12, $9
	addi $2, $zero, 1
	syscall 