.text


main:
	addi $2, $zero, 5
	syscall
	
	addi $8, $0, 10
	addi $9, $0, -1
	addi $20, $0, 32
	addi $21, $0, 16
	
#------------------ partes do numero --------------------#
#				     do $10 ao $13
	div $2, $8
	mfhi $10
	mflo $11
	
	div $11, $8
	mfhi $11
	mflo $12
	
	div $12, $8
	mfhi $12
	mflo $13
	
	div $13, $8
	mfhi $13
#-------------------------------------------------------#

	mul $15, $13, $9
	srl $15, $15, 31
	mul $15, $15, $21
	add $15, $15, $20
	add $4, $15, $13
	addi $2, $0, 11
	syscall
	
	mul $15, $12, $9
	srl $15, $15, 31
	mul $15, $15, $21
	add $15, $15, $20
	add $4, $15, $12
	addi $2, $0, 11
	syscall
	
	mul $15, $11, $9
	srl $15, $15, 31
	mul $15, $15, $21
	add $15, $15, $20
	add $4, $15, $11
	addi $2, $0, 11
	syscall
	
	mul $15, $10, $9
	srl $15, $15, 31
	mul $15, $15, $21
	add $15, $15, $20
	add $4, $15, $10
	addi $2, $0, 11
	syscall

	

