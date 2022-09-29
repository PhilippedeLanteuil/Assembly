.data
  ler1: .asciiz "\n Digite o numero que você gostaria de saber o fatorial: " #Declaracao de variaveis e seus tipos
  ler2: .asciiz "\n O resultado é: " #Designa uma string para a variável ler2
  pula_linha: .asciiz "\n" #Designa uma string para a variável pular_linha
  
.text # onde declaramos as intrucoes
  li $t0,1 #carrega imediatamente i = 1
  li $t1,0 #carrega imediatamente $t0 = 0
  li $t2,0 #carrega imediatamente $t2 = 0
 .globl principal
 
principal:
   la $a0,ler1 #Prepara o programa para escrever uma string
   li $v0,4 #Designa a string a ser lida
   syscall #Imprime a string
   
   li $v0,5 #Prepara o programa para ler um inteiro
   syscall #Solicita o inteiro
   
   move $t4,$v0 #Move o inteiro para o espaço $t4
   
 fatorialN:         
    beq $t2,$t4,saida # se $t2 == $t4 pula para saida
    addi $t2,$t2,1 #i = i+1
    mult $t0, $t2 # fat = i*(i+1)
    mflo $t0 # move from lo para $t0
    j fatorialN #pula para fatorialN
    
saida:
   la $a0,ler2 #Designa a string a ser escrita
   li $v0,4 #Designa a string a ser lida
   syscall #Imprime a string
  
   move $a0,$t0 #Move o inteiro para o espaço $a0
   li $v0, 1  #Prepara o programa para escrever um inteiro
   syscall #Imprime o inteiro
      
   la $a0,pula_linha #Designa a string a ser escrita
   li $v0,4 #Designa a string a ser lida
   syscall   #Imprime a string
   
