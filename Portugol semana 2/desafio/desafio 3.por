programa
{
	funcao inicio()
	{
		real numero, soma, maior, menor, media
		inteiro i

		escreva("Digite o 1º número: ")
		leia(numero)

		soma = numero
		maior = numero
		menor = numero

		para (i = 2; i <= 5; i++)
		{
			escreva("Digite o ", i, "º número: ")
			leia(numero)

			soma = soma + numero

			se (numero > maior)
			{
				maior = numero
			}

			se (numero < menor)
			{
				menor = numero
			}
		}

		media = soma / 5

		escreva("\n--- RESULTADOS ---\n")
		escreva("Soma: ", soma, "\n")
		escreva("Média: ", media, "\n")
		escreva("Maior número: ", maior, "\n")
		escreva("Menor número: ", menor, "\n")
	}
}
