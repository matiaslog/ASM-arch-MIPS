.text

main:
	addi $v0, $zero, 5
	syscall
	move $t2, $v0
	add $a0, $t2, $t2
	addi $v0, $zero, 1
	syscall
	addi $v0, $zero, 10
	syscall