.data
	pequenas: .asciiz "Insira a qtd. de camisetas pequenas: "
	medias: .asciiz "Insira a qtd. de camisetas médias: "
	grandes: .asciiz "Insira a qtd. de camisetas grandes: "
	total: .asciiz "\nPreço total: "
.text
main:
	# Aceitando input de camisetas pequenas
	li $v0, 4
	la $a0, pequenas
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	mul $t1, $t1, 10
    
	# Aceitando input de camisetas médias
	li $v0, 4
	la $a0, medias
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	mul $t2, $t2, 12
    
	# Aceitando input de gamisetas grandes
    	li $v0, 4
	la $a0, grandes
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero
	mul $t3, $t3, 15
    
	# Processar os preços
	add $t4, $t3, $t2
	add $t4, $t4, $t1
    
	# Mostrar o preço total
	li $v0, 4
	la $a0, total
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
