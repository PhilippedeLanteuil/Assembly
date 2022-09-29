.data
	perg1: .asciiz "Digite seu nome: " #Pede ao usuário o nome
	perg12: .space 80 #Delimita o espaço de caracteres da string
	perg2: .asciiz "Digite seu endereco: " #Pede ao usuário o endereço
	perg22: .space 80 #Delimita o espaço de caracteres da string
	perg3: .asciiz "Digite sua data de nascimento: " #Pede ao usuário a data de nascimento
	perg32: .space 11 #Delimita o espaço de caracteres da string
	resp1: .asciiz "Seu nome e " #Imprime o nome digitado
	resp2: .asciiz "Voce mora em " #Imprime o endereço digitado
	resp3: .ascii "A sua data de nascimento e " #Imprime a data de nascimento
	
.text
li $v0, 4   #Imprime uma string
la $a0, perg1 #Imprime a perg1
syscall
li $v0, 8  #Lê o valor da string
la $a0, perg12 #Variável para definição de espaços de caracteres
li $a1, 80 #Delimita o espaço de caracteres da string
syscall
move $t0, $a0 #Move o valor do registrador temporário para o definitivo
li $v0, 4  #Imprime uma string
la $a0, perg2 #Imprime a perg2
syscall 
li $v0, 8 #Lê o valor da string
la $a0, perg22 #Variável para definição de espaços de caracteres
li $a1, 80 #Delimita o espaço de caracteres da string
syscall
move $t1, $a0 #Move o valor do registrador temporário para a definitivo
li $v0, 4 #Imprime uma string
la $a0, perg3 #Imprime a perg3
syscall
li $v0, 8  #Lê o valor da string
la $a0, perg32 #Variável para definição de espaços de caracteres
li $a1, 11 #Delimita o espaço de caracteres da string
syscall
move $t2, $a0 #Move o valor do registrador temporário para a definitivo
li $v0, 4 #Imprime uma string
la $a0, resp1 #Imprime a resp1
syscall
li $v0, 4 #Imprime uma string
move $a0, $t0 #Move o valor do registrador temporário para a definitivo
syscall
li $v0, 4 #Imprime uma string
la $a0, resp2 #Imprime a resp2
syscall
li $v0, 4 #Imprime uma string
move $a0, $t1 #Move o valor do registrador temporário para a definitivo
syscall
li $v0, 4 #Imprime uma string
la $a0, resp3 #Imprime a resp3
syscall
li $v0, 4 #Imprime uma string
move $a0, $t2 #Move o valor do registrador temporário para a definitivo
syscall
