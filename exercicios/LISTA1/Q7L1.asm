.text

main:
	addi $2, $zero, 5 #espera um numero de 3 algarismos
	syscall
	
	addi $9, $zero, 10
	#move o ultimo numero para o reg $t2
	div $2, $9
	mfhi $10 
	
	#move terceiro numero para $t3
	mflo $11
	div $11, $9
	mfhi $11
	
	#move segundo numero para $t4
	mflo $12
	div $12, $9
	mfhi $12
	
	
	#move primeiro numero para $t5
	mflo $13
	div $13, $9
	mfhi $13
	
	
	move $4, $10
	addi $2, $zero, 1
	syscall
	
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	
	addi $2, $zero, 1
	move $4, $11
	syscall
	
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	
	addi $2, $zero, 1
	move $4, $12
	syscall
	
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	
	addi $2, $zero, 1
	move $4, $13
	syscall
	