.data
	texto_a: .asciiz "Insira o valor A: "
	texto_b: .asciiz "Insira o valor B: "
	resultado: .asciiz "Valor C: " 
.text
main:
	# Ler A
	li $v0, 4
	la $a0, texto_a
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	# Ler B
	li $v0, 4
	la $a0, texto_b
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	beq $t1, $t2, se_igual
	j se_diferente
	
# Se A, B iguais:
se_igual:
	# C = A + B
	add $t3, $t1, $t2
	j fim
	
# Senão:
se_diferente:
	# Multiplicar A por B = C
	mul $t3, $t1, $t2
	j fim
fim:
	# Mostrar C
	li $v0, 4
	la $a0, resultado
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
