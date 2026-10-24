.data
	input: .asciiz "Insira um número positivo: "
	maior: .asciiz "Maior: "
	menor: .asciiz "\nMenor: "
	
.text
main:
	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 5
	syscall
	bltz $v0, main
	add $t1, $v0, $zero
	
	li $t5, 1
	
	add $t2, $t1, $zero
	add $t3, $t1, $zero
	
	j loop
	
loop:
	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 5
	syscall
	bltz $v0, loop
	add $t1, $v0, $zero
	
	add $t5, $t5, 1
	
	bgt $t1, $t2, n_maior
	blt $t1, $t3, n_menor
	beq $t5, 10, fim
	add $t5, $t5, 1
	j loop
	
n_maior:
	add $t2, $t1, $zero
	beq $t5, 10, fim
	j loop

n_menor:
	add $t2, $t1, $zero
	beq $t5, 10, fim
	j loop
fim:
	li $v0, 4
	la $a0, maior
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall

	li $v0, 4
	la $a0, menor
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall

