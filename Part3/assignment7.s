.data
	val: .asciiz "Insira um valor entre 100 e 999: "
	cen: .asciiz "CENTENA  = "
	dez: .asciiz "\nDEZENA = "
	un: .asciiz "\nUNIDADE = "
.text
main:
	li $v0, 4
	la $a0, val
	syscall
	
	li $v0 5
	syscall
	add $t1, $v0, $zero
	
	blt $t1, 100, main
	bgt $t1, 999, main
	
	div $t2, $t1, 100
	
	rem $t3, $t1, 10
	
	div $t4, $t1, 10
	rem $t4, $t4, 10

	li $v0, 4
	la $a0, cen
	syscall
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	li $v0, 4
	la $a0, dez
	syscall
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	
	li $v0, 4
	la $a0, un
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall

