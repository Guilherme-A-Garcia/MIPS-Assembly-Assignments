.data
	valdolar: .asciiz "Insira o valor em dólar: $"
	valreal: .asciiz "Valor convertido para reais: R$"
.text
main:
	li $v0, 4
	la $a0, valdolar
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	mul $t2, $t1, 5
	
	li $v0, 4
	la $a0, valreal
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
