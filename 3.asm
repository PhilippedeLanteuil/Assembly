.data
	entrada: .asciiz "Escolha um número: " #Designa uma string para a variável entrada
	linha: .asciiz " " #Designa uma string para a variável linha
.text
li $v0, 4 #Prepara o programa para escrever uma string
la $a0, entrada #Designa a string a ser lida
syscall #Imprime a string
li $v0, 5 #Prepara o programa para ler um inteiro
syscall #Solicita o inteiro
move $s0, $v0 #Move o inteiro para o espaço $s0 
move $t0, $zero #Designa $to como 0
while: #Loop de repetição
beq $t0, $s0, saida #Compara o número digitado com o $t0, se igual encerra o programa
addi $t0, $t0, 1 #Adiciona 1 ao número $t0, guardando um novo resultado em $t0
li $v0, 1 #Prepara o programa para escrever um inteiro
move $a0, $t0 #Move o resultado de $t0 para ser escrito
syscall #Imprime o número
li $v0, 4 #Prepara o programa para escrever uma string
la $a0, linha #Designa a string a ser escrita
syscall #Imprime a string
j while #Retorna ao loop
saida: #Encerra o programa
