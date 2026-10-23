.data
	num: .asciiz "Insira um número de 0 até 100: "
	branch1: .asciiz "Qtd. de Números em [0-25]: "
	branch2: .asciiz "\nQtd. de Números em [26-50]: "
	branch3: .asciiz "\nQtd. de Números em [51-75]: "
	branch4: .asciiz "\nQtd. de Números em [76-100]: "
.text
main:
	li $v0, 4
	la $a0, num
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	bltz $t1, fim
	blt $t1, 26, ate_25
	blt $t1, 51, ate_50
	blt $t1, 76, ate_75
	blt $t1, 100, ate_100
	j main
	
ate_25:
	add $t2, $t2, 1
	j main

ate_50:
	add $t3, $t3, 1
	j main

ate_75:
	add $t4, $t4, 1
	j main

ate_100:
	add $t5, $t5, 1
	j main

fim:
	li $v0, 4
	la $a0, branch1
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall

	li $v0, 4
	la $a0, branch2
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall

	li $v0, 4
	la $a0, branch3
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall

	li $v0, 4
	la $a0, branch4
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
