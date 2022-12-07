programa
{
	funcao inicio() {
		
		inteiro op 
		escreva ("O que deseja fazer?\n")

		escreva("1 ----------> Situações dos quartos\n")
		escreva("2 ----------> Organização por sexo\n")
		escreva("3 ----------> Banco de dados\n")

		leia(op)

		se (op == 1){limpa() condQuarto()}
		se (op == 2){limpa() Organizar()}
		se (op == 3){limpa() ConfBD()}
		se (op < 1 ou op > 3){
		limpa()
		escreva("Insira um número válido")
		inicio()
		}}
		

	funcao condQuarto(){
		cadeia Qrt[20] 
		inteiro selecao
		caracter R = 'S'
		caracter LO = 'a' 
		
		enquanto (R == 'S'){
		//
		escreva ("=============================================\n")
		escreva ("Escolha um quarto de 1 até 20: ")
		leia (selecao) //7
		escreva ("---------------------------------------------\n")
		escreva("O quarto está livre ou ocupado? (L/O): ")
		leia(LO)
		
		se (Qrt[selecao] == "ocupado; "){escreva("Quarto já está ocupado\n")}
			se (LO == 'O'){Qrt[selecao] = "ocupado; "}
			senao se (LO == 'L'){Qrt[selecao] = "livre; "}
			senao {escreva("Insira um valor válido!")}
		
		escreva ("---------------------------------------------\n")
		escreva("Deseja continuar? (sim --> S/N <--não): ")
		leia(R)}
		escreva ("---------------------------------------------\n")
		escreva ("=============================================\n")

		escreva("Nº|Condição \n")
		para (inteiro i = 0; i <= 19; i ++){
		se (Qrt[i] == ""){Qrt[i] = "livre;" }
		
		escreva(i ,"--> ", Qrt[i], "\n")
		}}
	
	
	funcao Organizar (){
	cadeia nomeT
	cadeia nome[5]
	caracter sexo
	inteiro cont = 0
	inteiro contam = 4

	para (inteiro in = 0; in <= 4; in ++){
	escreva("Escreva seu nome: ")
	leia(nomeT)
	escreva("Masculinos ou Feminino? (M/F): ")
	leia (sexo)
	se (sexo == 'F'){
	nome[cont] = nomeT
	cont ++}
	senao se (sexo == 'M'){
	nome[contam] = nomeT
	contam --}

	escreva("--------------------------------------\n")}

	para (inteiro i = 0; i <= 4; i ++){
		se (nome[i] == ""){nome[i] = "Usuário não cadastrado, verifique as informações inseridas."}
		escreva(i+1 ,"--> ", nome[i], "\n")
		
	// Sim, professora, eu também fiquei abismado com a gambiarra que fiz
	// perdão, acho que é muito café =C	
	}}

	cadeia nome[15]
	inteiro posicao
	inteiro contador = 0

	funcao ConfBD() {
		limpa()
		inteiro op 
		escreva ("O que deseja fazer?\n")

		escreva("1 ----------> cadastrar\n")
		escreva("2 ----------> pesquisar\n")
		escreva("3 ----------> sair\n")

		leia(op)

		se (op == 1){limpa()cadastrar()}
		se (op == 2){limpa() pesquisar()}
		se (op == 3){}
		se (op < 1 ou op > 3){
		limpa()
		escreva("Insira um número válido")
		ConfBD()
		}
		}

			funcao cadastrar(){
			caracter condicao = 'S'
			cadeia confirm
			limpa()
			escreva("-----CADASTRO-----\n")
			
			enquanto (condicao == 'S'){
				
				se (nome[14] != "") {escreva("Banco de dados lotado, chame o 'cara do TI'!\n")
				escreva ("Pressione 'Enter' para continuar")
				leia(confirm)
				ConfBD()}
			
			
			escreva("Insira o nome: ")
			leia(nome[contador])
			contador ++
			escreva("Deseja cadastrar mais usuários? (S/N): ")
			leia(condicao)
			escreva("-----------------------------------------------\n")}
			ConfBD()}
			
			//para (inteiro i = 0; i <= 14; i ++){
			//se (nome[i] == ""){nome[i] = "Vazio"}
			//escreva(nome[i])}

			funcao pesquisar(){
			cadeia Pnome
			caracter condicao = 'S'
			limpa()
			escreva("-----PESQUISAR-----\n")
			enquanto (condicao == 'S'){
			escreva("Insira o nome: ")
			leia(Pnome)
			inteiro i = -1
			faca {i ++} enquanto (i < 15 e Pnome != nome[i])
			se (i > 14){escreva("Hóspede não encontrado.\n")}
			senao {escreva ("Hóspede ",nome[i], " foi encontrado no índice ",i)}
			//Hóspede José Freitas foi encontrado no índice 1
			escreva("\nDeseja pesquisar mais usuários? (S/N): ")
			leia(condicao)
			escreva("-----------------------------------------------\n")}
			ConfBD()
			}


}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */