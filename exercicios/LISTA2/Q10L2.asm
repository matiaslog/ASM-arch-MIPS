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
	
	add $13, $10, $11
	add $13, $13, $12
	addi $14, $0, 3
	
	div $13, $14
	mflo $15
	mfhi $16
	mul $16, $16, $14
	addi $20, $0, 4
	sub $8, $20, $16
	srl $8, $8, 31
	
	addi $22, $0, 1
	beq $22, $8, soma
	move $4, $15
	addi $2, $0, 1
	syscall
	j fim
	
soma:
	add $4, $8, $15
	addi $2, $0, 1
	syscall
	j fim
	
fim:
	addi $2, $0, 10
	syscall
	
