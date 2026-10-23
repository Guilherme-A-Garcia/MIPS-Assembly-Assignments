.data
	altura : .asciiz "Insira a altura (em cm): "
	maior: .asciiz "\nMaior altura: "
	menor: .asciiz "\nMenor altura: "
.text
main:	
	li $v0, 4
	la $a0, altura
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	add $t2, $t2, 1

	add $t3, $t1, 0
	add $t4, $t1, 0
	
	b verif

verif:
	add $t2, $t2, 1
	
	li $v0, 4
	la $a0, altura
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	bgt $t1, $t3, b_maior
	blt $t1, $t4, b_menor
	
	ble $t2, 15, verif
	j fim

b_maior:
	add $t3, $t1, 0
	beq $t2, 15, fim
	j verif

b_menor:
	add $t4, $t1, 0
	beq $t2, 15, fim
	j verif

fim:
	li $v0, 4
	la $a0, maior
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	li $v0, 4
	la $a0, menor
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall



