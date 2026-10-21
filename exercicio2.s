.data
	raio: .asciiz "Insira o raio da circunferência: "
	comp: .asciiz "Comprimento: "
.text
main:
	li $v0, 4
	la $a0, raio
	syscall
	
	li $v0 5
	syscall
	add $t1, $v0, $zero

	li $t2, 1
	mul $t2, $t2, 2
	mul $t2, $t2, 3
	mul $t2, $t2, $t1
	
	li $v0, 4
	la $a0, comp
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	
	
	
