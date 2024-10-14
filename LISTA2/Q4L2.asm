.text

main:
	addi $2, $0, 5
	syscall
	move $8, $2
	addi $2, $0, 5
	syscall
	move $9, $2
	
	beq $9, $8, igual
	
	addi $25, $0, 1
	sub $10, $9, $8
	srl $10, $10, 31
	beq $10, $25, p_maior 
	j p_menor
	
igual:
	addi $2, $0, 1
	move $4, $8
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '='
	syscall
	
	addi $2, $0, 1
	move $4, $9
	syscall
	
	j fim
	
p_maior:
	addi $2, $0, 1
	move $4, $8
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '>'
	syscall
	
	addi $2, $0, 1
	move $4, $9
	syscall
	
	j fim
p_menor:
	addi $2, $0, 1
	move $4, $8
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '<'
	syscall
	
	addi $2, $0, 1
	move $4, $9
	syscall
	
	j fim
fim:
	addi $2, $0, 10
	syscall