.data
	salario: .asciiz "Insira o salário atual: R$"
	salario_novo: .asciiz "Salário com acréscimo: R$"
.text
main:
	li $v0, 4
	la $a0, salario
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	add $t2, $t1, $zero
	
	mul $t2, $t2, 25
	div $t2, $t2, 100
	
	add $t1, $t1, $t2
	
	li $v0, 4
	la $a0, salario_novo
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
