#$a0 = a e $a1 = b, $v0 é nossa saida
.text
	lw $t1, 1
	add $t0, $0, $0

loop:	beq $a1, $0, final # se b for igual a 0 ir para o final
	add $t0, $t0, $a0 # se b for != de 0,  $t0 += a
	sub $a1, $a1, $t1 # b = b - 1
	j loop #volta pro começo do loop

final: 	addi $t0, $t0, 100 # $t0 = $t0 + 100
	add $v0, $t0, $zero # retorna $v0 com o valor de $t0
