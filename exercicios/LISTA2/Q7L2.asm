.text

main:
	addi $2, $0, 5
	syscall
	
	#---- const ----#
	
	addi $20, $0, 4 
	addi $21, $0, 100
	addi $22, $0, 400
	
	div $2, $21
	mfhi $8
	beq $0, $8, centenario
	
	div $2, $20
	mfhi $8
	beq $0, $8, bi
	j nao_é
	
centenario:
	div $2, $22
	mfhi $8
	beq $0, $8, bi

nao_é:
	addi $2, $0, 11
	addi $4, $0, 'n'
	syscall
	j fim
	
bi:
	addi $2, $0, 11
	addi $4, $0, 's'
	syscall
	j fim
	
fim:
	addi $2, $0, 10
	syscall
	
	