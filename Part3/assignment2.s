.data
	val1: .asciiz "Insira o primeiro valor: "
	val2: .asciiz "Insira o segundo valor: "
	val1trocado: .asciiz "Primeiro valor trocado: "
	val2trocado: .asciiz "\nSegundo valor trocado: "
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
	
	add $t3, $t2, $zero
	add $t2, $t1, $zero
	add $t1, $t3, $zero
	
	li $v0, 4
	la $a0, val1trocado
	syscall
	
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, val2trocado
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	