.data	
	valc: .asciiz "Insira o valor do c: "
	valb: .asciiz "Insira o valor do b: "
	hip: .asciiz "Hipotenusa aproximada = "
.text
main:
	# Recebendo c
	li $v0, 4
	la $a0, valc
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	# Recebendo b
	li $v0, 4
	la $a0, valb
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	# Calculando os quadrados
	mul $t1, $t1, $t1
	mul $t2, $t2, $t2
	add $t3, $t1, $t2
	
	# Registradores da raíz quadrada:
	li $t4, 0
	li $t5, 0
	
loop:
	bge $t5, $t3, fim
	mul $t5, $t4, $t4
	
	add $t4, $t4, 1
	j loop
fim:
	# Mostrar o resultado final
	li $v0, 4
	la $a0, hip
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	
	
	
		

	
	
