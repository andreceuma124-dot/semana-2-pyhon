programa
{
	funcao inicio()
	{
		inteiro opcao
		real n1, n2

		escreva("=== OPERAÇÕES MATEMÁTICAS ===\n")
		escreva("1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n")
		
		escreva("Escolha uma opção (1-4): ")
		leia(opcao)

		escreva("Digite o primeiro número: ")
		leia(n1)

		escreva("Digite o segundo número: ")
		leia(n2)

		escolha (opcao)
		{
			caso 1:
				escreva("Resultado da Soma: ", n1 + n2)
				pare
			caso 2:
				escreva("Resultado da Subtração: ", n1 - n2)
				pare
			caso 3:
				escreva("Resultado da Multiplicação: ", n1 * n2)
				pare
			caso 4:
				se (n2 != 0)
				{
					escreva("Resultado da Divisão: ", n1 / n2)
				}
				senao
				{
					escreva("Erro: Divisão por zero não é permitida.")
				}
				pare
			caso contrario:
				escreva("Opção inválida!")
		}
	}
}
