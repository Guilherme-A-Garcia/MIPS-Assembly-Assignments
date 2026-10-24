.data
	val1: .asciiz "Insira o primeiro valor: "
	val2: .asciiz "Insira o segundo valor: "
	nl: .asciiz "\n"
.text
main:
	li $v0, 4
	la $a0, val1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, val2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	beq $t1, $t2, main
	bgt $t1, $t2, val1_maior
	j val2_maior

val1_maior:
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0 4
	la $a0, nl
	syscall

	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	j fim

val2_maior:
	li $v0, 1
	add $a0, $t2, $zero
	syscall

	li $v0 4
	la $a0, nl
	syscall

	li $v0, 1
	add $a0, $t1, $zero
	syscall	

	j fim

fim:	


	