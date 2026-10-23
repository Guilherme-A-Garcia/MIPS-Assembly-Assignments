.data
	val1: .asciiz "Insira o primeiro valor: "
	val2: .asciiz "Insira o segundo valor: "
	numimp: .asciiz "Soma dos ímpares: "
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
	
	bgt $t1, $t2, t1_maior
	j t2_maior
	
t1_maior:
	add $t3, $t2, 0
	add $t4, $t1, 0
	j verifImpar

t2_maior:
	add $t3, $t1, 0
	add $t4, $t2, 0
	j verifImpar

verifImpar:
	bgt $t3, $t4, fim

	rem $t6, $t3, 2
	
	bnez $t6, somaImpar
	add $t3, $t3, 1
	j verifImpar

somaImpar:
	add $t5, $t5, $t3
	add $t3, $t3, 1
	ble $t3, $t4, verifImpar
	j fim

fim:
	li $v0, 4
	la $a0, numimp
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
	