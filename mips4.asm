# a) A[15] = h + B[6]
# b) A[15] = A[5] + B[6] + B[0]
# c) B[4] = A[12] - A[5] + A[3]
# $s0: h, $s1: endereço base de A, $s2: endereço base de B
.text
letra_a:
	lw $t1, 60($s1)
	lw $t2, 24($s2)
	add $t1, $s0, $t2
	sw $t1, 60($s1)
letra_b:
	lw $t1, 60($s1)
	lw $t2, 20($s1)
	lw $t3, 24($s2) 
	lw $t4, 0($s2) 
	add $t2, $t2, $t3
	add $t1, $t2, $t4
	sw $t1, 60($s1)
letra_c:
	lw $t1, 48($s1)
	lw $t2, 20($s1) 
	lw $t3, 12($s1)
	sub $t1, $t1, $t2
	add $t1, $t1, $t3
	sw $t1, 16($s2)	
	
