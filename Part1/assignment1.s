.data
	str00: .asciiz "Insira o valor da base: "
	str01: .asciiz "Insira o valor da altura: "
	str02: .asciiz "Área = "
.text
main:
	# print str00
	li $v0, 4
	la $a0, str00
	syscall
	
	# pedir input e mover do $v0 porque ele vai ser substituido
	li $v0, 5
	syscall
	add $t1, $v0, 0


	# print e input do str01
	li $v0, 4
	la $a0, str01
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	
	# calcular a área
	mul $t3, $t2, $t1
	
	
	# mostrar o resultado
	li $v0, 4
	la $a0, str02
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
