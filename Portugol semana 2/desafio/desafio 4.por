programa
{
	funcao inicio()
	{
		cadeia SENHA_CORRETA = "1234"
		inteiro esforco = 0
		logico acesso_permitido = falso
		cadeia senha_digitada

		enquanto (esforco < 3 e nao acesso_permitido)
		{
			escreva("Digite a senha: ")
			leia(senha_digitada)
			esforco = esforco + 1

			se (senha_digitada == SENHA_CORRETA)
			{
				acesso_permitido = verdadeiro
				escreva("Acesso liberado! Bem-vindo.\n")
			}
			senao
			{
				se (esforco < 3)
				{
					escreva("Senha incorreta. Tentativas restantes: ", 3 - esforco, "\n")
				}
			}
		}

		se (nao acesso_permitido)
		{
			escreva("\nConta bloqueada! Limite de 3 esforços excedidos.\n")
		}
	}
}
