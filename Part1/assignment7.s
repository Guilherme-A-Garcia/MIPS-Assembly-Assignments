# Como o enunciado é ambíguo pra caramba, vou tentar separar as coisas:
# Ler um int, guardar em uma var. Caso for par, somar 5, senão, somar 8. Exibir o resultado.

.data
	input: .asciiz "Insira o valor: "
	result: .asciiz "Resultado: "
.text
main:
	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	rem $t2, $t1, 2
	
	beq $t2, $zero, se_par
	j se_impar
	
se_par:
	add $t3, $t1, 5 
	j fim

se_impar:
	add $t3, $t1, 8
	j fim

fim:
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
