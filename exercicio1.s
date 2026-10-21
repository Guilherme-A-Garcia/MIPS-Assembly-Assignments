.data
	comprimento: .asciiz "Insira o valor do comprimento: "
	largura: .asciiz "Insira o valor da largura: "
	altura: .asciiz "Insira o valor da altura: "
	volume: .asciiz "Volume: "
	
.text
main:
	li $v0, 4
	la $a0, comprimento
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, largura
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero

	li $v0, 4
	la $a0, altura
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero
	
	mul $t3, $t3, $t2
	mul $t3, $t3, $t1
	
	li $v0, 4
	la $a0, volume
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
		
	