.data
	val1: .asciiz "Insira o primeiro valor: "
	val2: .asciiz "Insira o segundo valor: "
	res: .asciiz "Resto: "
.text
main:
	li $v0, 4
	la $a0, val1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, val2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	bgt $t1, $t2, um_maior
	j dois_maior

um_maior:
	div $t3, $t1, $t2
	mul $t2, $t2, $t3
	sub $t4, $t1, $t2
	
	j fim

dois_maior:
	div $t3, $t2, $t1
	mul $t1, $t1, $t3
	sub $t4, $t2, $t1
	
	j fim

fim:
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	