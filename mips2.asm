# a)escrever a = d - e + 40
# b) escrever e = e & ~(0x80)
# dados que a = $s0, b = $s1, c = $s2, d = $s3, e = $s4
.text
letra_a :
	addi $s0,$s3, 40
	sub $s0, $s0, $s4
letra_b:
	li $t1, 0x80
	not $t1, $t1
	and $s4, $s4, $t1

	
