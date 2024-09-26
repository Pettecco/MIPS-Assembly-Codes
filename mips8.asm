.data
string: .asciiz "Digite um numero A: "
string2: .asciiz "Digite outro numero B: "
igual: .asciiz "São iguais\n"
bigger: .asciiz "A é maior que B\n"
menor: .asciiz "A é menor que B\n"

.text
main:
    li $v0, 4 
    la $a0, string
    syscall
    
    li $v0, 5 
    syscall
    move $t0, $v0 
    
    li $v0, 4 
    la $a0, string2
    syscall
    
    li $v0, 5 
    syscall
    move $t1, $v0
    
    beq $t0, $t1, iguais
    bgt $t0, $t1, maior
    li $v0, 4
    la $a0, menor
    syscall
    j fim
    
iguais:
    li $v0, 4
    la $a0, igual
    syscall
    j fim
    
maior:
    li $v0, 4
    la $a0, bigger
    syscall
    
fim:
    li $v0, 10
    syscall 
