.text

main:

	addi $2, $0, 5
	syscall
	move $10, $2
	
	addi $2,$0, 5
	syscall
	move $11, $2
	addi $9, $0, 1 
	
	sub $12, $10, $11
	srl $13, $12, 31
	beq $9, $13, p_menor
	j p_maior
	
p_maior:
	move $4, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 1
	move $4, $12
	syscall

	j fim

p_menor:
	move $4, $11
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 1
	sub $4, $11, $10
	syscall

	j fim

fim:
	addi $2, $0, 10
	syscall
	