.data
	nota1: .asciiz "Insira a primeira nota: "
	nota2: .asciiz "Insira a segunda nota: "
	nota3: .asciiz "Insira a terceira nota: "
	nota4: .asciiz "Insira a quarta nota: "
	media: .asciiz "\nMédia: "
	aprovado: .asciiz "APROVADO"
	exame: .asciiz "EXAME"
	retido: .asciiz "RETIDO"
.text
main:
	li $v0, 4
	la $a0, nota1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $v0, 4
	la $a0, nota2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, $zero
	
	li $v0, 4
	la $a0, nota3
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, $zero
	
	li $v0, 4
	la $a0, nota4
	syscall
	
	li $v0, 5
	syscall
	add $t4, $v0, $zero
	
	add $t5, $t1, $t2
	add $t5, $t5, $t3
	add $t5, $t5, $t4
	div $t5, $t5, 4
	
	bge $t5, 6, apr
	bge $t5, 3, exm
	j ret
	
apr:	
	li $v0, 4
	la $a0, aprovado
	syscall
	j fim

exm:
	li $v0, 4
	la $a0, exame
	syscall
	j fim

ret:
	li $v0, 4
	la $a0, retido
	syscall
	j fim

fim:
	li $v0, 4
	la $a0, media
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall
