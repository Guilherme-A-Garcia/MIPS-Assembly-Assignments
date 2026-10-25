.data
	val: .asciiz "Insira um valor entre 1 e 50000: "
	val_primo: .asciiz "Primo antecessor ao número inserido: "
	semprimo: .asciiz "Não há um primo antecessor."
.text
main:
	li $v0, 4
	la $a0, val
	syscall
	
	li $v0, 5
	syscall
	
	blt $v0, 1, main
	bgt $v0, 50000, main
	add $t0, $v0, $zero
	
	ble $t0, 2, sem_primo
	
	# PRIMEIRO CANDIDATO
	sub $t1, $t0, 1

candidato:
	blt $t1, 2, sem_primo
	beq $t1, 2, primo
	
	rem $t3, $t1, 2
	beq $t3, 0, proximo
	
	# DIVISOR
	li $t2, 3

verif_primo:
	mul $t3, $t2, $t2
	bgt $t3, $t1, primo
	
	rem $t4, $t1, $t2
	beq $t4, $zero, proximo
	
	add $t2, $t2, 2	
	j verif_primo

proximo:
	sub $t1, $t1, 1
	j candidato

primo:
	li $v0, 4
	la $a0, val_primo
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	j fim
	
sem_primo:
	li $v0, 4
	la $a0, semprimo
	syscall
	j fim

fim:

	
