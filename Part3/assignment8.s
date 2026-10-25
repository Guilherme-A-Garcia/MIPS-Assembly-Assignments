.data
	valor_prod: .asciiz "Insira o valor do produto (entre R$1000 e R$9999): "
	valor_parc: .asciiz "Insira o valor da parcela (entre R$100 e R$500): "
	qtd_parc: .asciiz "Número de parcelas a serem pagas: "
.text
main:
	li $v0, 4
	la $a0, valor_prod
	syscall
	li $v0, 5
	syscall
	
	blt $v0, 1000, main
	bgt $v0, 9999, main
	
	add $t1, $v0, $zero
	b verif_parc

verif_parc:
	li $v0, 4
	la $a0, valor_parc
	syscall
	li $v0, 5
	syscall
	
	blt $v0, 100, verif_parc
	bgt $v0, 500, verif_parc
	
	add $t2, $v0, $zero	
	div $t3, $t1, $t2
	
	li $v0, 4
	la $a0, qtd_parc
	syscall
	li $v0, 1
	add $a0, $t3, $zero
	syscall
