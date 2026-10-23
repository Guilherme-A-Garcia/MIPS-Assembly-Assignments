.data
	valor: .asciiz "Insira um valor: "
	resultado: .asciiz "Resultado: "
.text
main:
	li $v0, 4
	la $a0, valor
	syscall
	
	li $v0 5
	syscall
	add $t1, $v0, 0
	
	bgtz $t1, se_positivo
	j se_negativo
	
se_positivo:
	mul $t2, $t1, 2
	j fim 
	
se_negativo:
	mul $t2, $t1, 3
	j fim

fim:
	li $v0, 4
	la $a0, resultado
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall