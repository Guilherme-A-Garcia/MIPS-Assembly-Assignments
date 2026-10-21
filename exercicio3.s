.data
	val1: .asciiz "Insira o primeiro valor: "
	val2: .asciiz "Insira o segundo valor: "
	dif: .asciiz "Diferença do maior pelo menor: "
.text
main:
	li $v0, 4
	la $a0, val1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, val2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	bgt $t1, $t2, t1_maior
	j t2_maior	

t1_maior:
	sub $t3, $t1, $t2
	j fim

t2_maior:
	sub $t3, $t2, $t1
	j fim

fim:
	li $v0, 4
	la $a0, dif
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
