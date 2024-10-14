.text

main:
    addi $2, $zero, 5
    syscall
    move $10, $2

    addi $2, $zero, 5
    syscall
    move $11, $2

    addi $2, $zero, 5
    syscall
    move $12, $2

    addi $20, $0, 1
    addi $21, $0, 2
    addi $22, $0, 3
    addi $25, $0, 60
    add $24, $0, 1
    
    mul $10, $10, $20
    mul $11, $11, $21
    mul $12, $12, $22
    add $10, $10, $11
    add $10, $10, $12
    add $20, $20, $21
    add $20, $20, $22
    
    div $10, $20
    mflo $14
    sub $15, $14, $25
    srl $15, $15, 31
    beq $15, $24, reprovado
    move $4, $14
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'A'
	syscall
	j fim

reprovado:
	move $4, $14
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'R'
	syscall
fim:
	addi $2, $0, 10
	syscall
    
