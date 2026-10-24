.data
	mes_nasc: .asciiz "Insira o mês de nascimento: "
	ano_nasc: .asciiz "Insira o ano de nascimento: "
	mes_atual: .asciiz "Insira o mês atual: "
	ano_atual: .asciiz "Insira o ano atual: "
	idade_meses: .asciiz "Idade em meses: "
.text
main:
	li $v0, 4
	la $a0, mes_nasc
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero

	li $v0, 4
	la $a0, ano_nasc
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	li $v0, 4
	la $a0, mes_atual
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero

	li $v0, 4
	la $a0, ano_atual
	syscall
	
	li $v0, 5
	syscall
	add $t4, $v0, $zero

	sub $t4, $t4, $t2
	
	mul $t4, $t4, 12
	sub $t3, $t3, $t1
	add $t4, $t4, $t3
	
	li $v0, 4
	la $a0, idade_meses
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
