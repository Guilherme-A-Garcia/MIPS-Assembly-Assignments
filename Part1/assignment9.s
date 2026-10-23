.data
	input1: .asciiz "Insira o primeiro número: "
	input2: .asciiz "Insira o segundo número: "
	zero_err: .asciiz "Por favor, insira um número que não seja zero: "
	result: .asciiz "Resultado: "
.text
main:
	li $v0, 4
	la $a0, input1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	li $v0, 4
	la $a0, input2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	beqz $t2, se_zero
	j fim

se_zero:
	li $v0, 4
	la $a0, zero_err
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	beqz $t2, se_zero
	j fim

fim:
	div $t3, $t1, $t2
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	