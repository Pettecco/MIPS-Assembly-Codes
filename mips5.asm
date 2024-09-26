.text
	bne $s3, $s4, Else #se $s3 != $s4 pulo para o else
	add $s0, $s1, $s2
	j Exit  #executei o if e devo sair da condição

Else:
	sub $s0, $s1, $s2
Exit:
	