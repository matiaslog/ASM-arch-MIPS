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
	srl $12, $12, 31
	beq $9, $12, p_menor
	j p_maior
	
p_maior:
	move $4, $10
	addi $2, $0, 1
	syscall
	j fim

p_menor:
	move $4, $11
	addi $2, $0, 1
	syscall

	j fim

fim:
	addi $2, $0, 10
	syscall
	