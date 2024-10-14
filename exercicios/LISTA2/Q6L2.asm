.text

main:
	addi $2, $0, 5
	syscall
	move $8, $2 #idade
	
	addi $2, $0, 5
	syscall
	move $9, $2 #anos trabalhados
	
	#---- constantes utilizadas ----#
	addi $20, $0, 64
	addi $21, $0, 1
	addi $22, $0, 39
	addi $23, $0, 59
	addi $24, $0, 34
	#------------------------------#
	
	sub $10, $20, $8
	srl $10, $10, 31
	beq $10, $21, pode
	
	sub $10, $22, $9
	srl $10, $10, 31
	beq $10, $21, pode
	
	sub $10, $23, $8
	srl $10, $10, 31
	
	sub $11, $24, $9
	srl $11, $11, 31
	beq $10, $11, pode
	j pode_não_man
	
pode:
	addi $2, $0, 11
	addi $4, $0, 'S'
	syscall
	j fim
	
pode_não_man:
	addi $2, $0, 11
	addi $4, $0, 'N'
	syscall
	j fim
	
fim:
	addi $2, $0, 10
	syscall


