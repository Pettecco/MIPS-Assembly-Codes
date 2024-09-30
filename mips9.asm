# x = (a-b) + (c-d)
.data
string1: .asciiz "Digite um numero A: \n"
string2: .asciiz "Digite um numero B: \n"
string3: .asciiz "Digite um numero C: \n"
string4: .asciiz "Digite um numero D: \n"
.text
main:
	li $v0, 4
	la $a0, string1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0 # $t0 = A
	
	li $v0, 4
	la $a0, string2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0 # $t1 = B
	
	li $v0, 4
	la $a0, string3
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0 # $t2 = C
	
	li $v0, 4
	la $a0, string4
	syscall
	
	li $v0, 5
	syscall
	move $t3, $v0 # $t3 = D
	
	sub $t4, $t0, $t1
	sub $t5, $t2, $t3
	
	add $t6, $t4, $t5
	li $v0, 1
	la $a0, ($t6)
	syscall
	
	
	
	
