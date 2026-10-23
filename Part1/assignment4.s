.data
	resposta: .asciiz "Área do trapézio: "
.text
main:
	# Declaração
	li $t0, 20
	li $t1, 14
	li $t2, 10
	
	# Cálculo
	add $t3, $t0, $t1
	mul $t3, $t3, $t2
	div $t3, $t3, 2
	
	# Print
	li $v0, 4
	la $a0, resposta
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	
