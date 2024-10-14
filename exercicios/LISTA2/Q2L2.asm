.text

main:
	addi $2, $0, 5
	syscall
	addi $8, $0, 1
	srl  $9, $2, 31
	beq $9, $8, negativo
	j positivo

positivo:	
	add $4, $2, $2
	addi $2, $0, 1
	syscall
	j fim

negativo:
	mul $4, $2, $2
	addi $2, $0, 1
	syscall
	j fim

fim:
	addi $2, $0, 10
	syscall