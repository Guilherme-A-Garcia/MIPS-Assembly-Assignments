.data
	hrmensais: .asciiz "Insira a quantidade de horas mensais: "
	hrextra: .asciiz "Insira a quantidade de horas extras: "
	desconto: .asciiz "Insira o desconto (em R$): "
	salbruto: .asciiz "\nSalário bruto: "
	salliquido: .asciiz "\nSalário líquido: "
.text
main:
	# Receber o input e das horas mensais (x10):
	li $v0, 4
	la $a0, hrmensais
	syscall
	
	li $v0, 5
	syscall
	mul $t1, $v0, 10
	
	# Receber o input de hora extra mensal (x15): 
	li $v0, 4
	la $a0, hrextra
	syscall
	
	li $v0, 5
	syscall
	mul $t2, $v0, 15
	
	# Receber o input de desconto (Em R$):
	li $v0, 4
	la $a0, desconto
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero

	# Calcular o salário líquido:
	add $t4, $t1, $t2
	sub $t4, $t4, $t3
	
	# Mostrar salários
	li $v0, 4
	la $a0, salbruto
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, salliquido
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	
