programa
{
	funcao inicio()
	{
		inteiro idade
		real renda

		escreva("Digite a sua idade: ")
		leia(idade)

		escreva("Digite a sua renda mensal: ")
		leia(renda)

		se (renda >= 10000 e idade >= 30)
		{
			escreva("Categoria: Diamante")
		}
		senao se (renda >= 5000)
		{
			escreva("Categoria: Ouro")
		}
		senao se (renda >= 2500)
		{
			escreva("Categoria: Prata")
		}
		senao
		{
			escreva("Categoria: Bronze")
		}
	}
}
