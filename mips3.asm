# codigo para A[12] = h + A[8]
# considerando que h esteja em $s2 e o endereço base do vetor A esteja em $s3
.text
main:
	lw $t0, 32($s3) # $t0 = A[8]
	add $t0, $s2, $t0 # $t0 = h + A[8]
	sw $t0, 48($s3) # A[12] = h + A[8]
