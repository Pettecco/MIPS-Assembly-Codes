.text
Loop: 
	addi $s3, $s3, 1     # Incrementa a
    	beq $s3, 10, Exit    # Se a == 10, sai do loop
    	j Loop               # Se não, repete o loop
Exit:
    	#sai do programa
