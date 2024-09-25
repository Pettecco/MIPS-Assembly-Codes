.data
string: .ascii "Hello, World!"

.text
main:
	li $v0, 4
	la $a0, string
	syscall

