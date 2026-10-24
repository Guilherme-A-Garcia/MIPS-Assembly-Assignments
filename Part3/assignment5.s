.data
	coef_a: .asciiz "Insira o valor do coeficiente A: "
	coef_b: .asciiz "Insira o valor do coeficiente B: "
	coef_c: .asciiz "Insira o valor do coeficiente C: "
	raiz: .asciiz "UMA RAÍZ REAL"
	d_raizes: .asciiz "DUAS RAÍZES REAIS"
	n_raizes: .asciiz "NÃO EXISTEM RAÍZES REAIS"
.text
main:
	li $v0, 4
	la $a0, coef_a
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0, 4
	la $a0, coef_b
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	li $v0, 4
	la $a0, coef_c
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	

	mul $t2, $t2, $t2
	mul $t1, $t1, 4
	mul $t1, $t1, $t3
	
	sub $t1, $t2, $t1

	bgtz $t1, draiz
	beqz $t1, uraiz
	j nraiz

draiz:
	li $v0, 4
	la $a0, d_raizes
	syscall

	j fim

uraiz:
	li $v0, 4
	la $a0, raiz
	syscall

	j fim
	
nraiz:
	li $v0, 4
	la $a0, n_raizes
	syscall
	
	j fim
	
fim:
