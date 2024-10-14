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

    addi $20, $0, 3
    addi $21, $0, 9
    addi $22, $0, 15
    
    mul $10, $10, $20
    mul $11, $11, $21
    mul $12, $12, $22
    add $10, $10, $11
    add $10, $10, $12
    add $20, $20, $21
    add $20, $20, $22
    
    div $10, $20
    mflo $4
    
    addi $2, $0, 1
    syscall
    addi $4, $0, '.'
    addi $2, $0, 11
    syscall
	addi $2, $0, 1
	mfhi $4
	syscall