programa
{
	funcao inicio()
	{
		// Vetores e contadores para substituir as listas do Python
		cadeia alunos[100]
		cadeia professores[100]
		cadeia funcionarios[100]
		cadeia todos_cadastrados[300]

		inteiro qtd_alunos = 0
		inteiro qtd_professores = 0
		inteiro qtd_funcionarios = 0
		inteiro qtd_todos = 0

		cadeia opcao_continuar = ""
		inteiro qtd_cadastros, i, idade, tipo_opcao
		cadeia nome

		// Enquanto a opção for diferente de "sair"
		enquanto (opcao_continuar != "sair" e opcao_continuar != "SAIR")
		{
			escreva("\nQuantos cadastros deseja realizar agora? ")
			leia(qtd_cadastros)

			// Para executando N cadastros
			para (i = 1; i <= qtd_cadastros; i++)
			{
				escreva("\n--- Cadastro ", i, " de ", qtd_cadastros, " ---\n")
				escreva("Digite o nome: ")
				leia(nome)
				escreva("Digite a idade: ")
				leia(idade)

				// Validação de idade mínima (>= 18)
				se (idade >= 18)
				{
					escreva("\nTipo de cadastro:\n")
					escreva("1 = Aluno\n")
					escreva("2 = Professor\n")
					escreva("3 = Funcionário\n")
					escreva("Escolha a opção (1-3): ")
					leia(tipo_opcao)

					// Seleção da categoria (escolha/caso substitui o match/case)
					escolha (tipo_opcao)
					{
						caso 1:
							alunos[qtd_alunos] = nome
							qtd_alunos = qtd_alunos + 1

							todos_cadastrados[qtd_todos] = nome + " (Aluno)"
							qtd_todos = qtd_todos + 1

							escreva("-> Aluno '", nome, "' cadastrado com sucesso!\n")
							pare

						caso 2:
							professores[qtd_professores] = nome
							qtd_professores = qtd_professores + 1

							todos_cadastrados[qtd_todos] = nome + " (Professor)"
							qtd_todos = qtd_todos + 1

							escreva("-> Professor '", nome, "' cadastrado com sucesso!\n")
							pare

						caso 3:
							funcionarios[qtd_funcionarios] = nome
							qtd_funcionarios = qtd_funcionarios + 1

							todos_cadastrados[qtd_todos] = nome + " (Funcionário)"
							qtd_todos = qtd_todos + 1

							escreva("-> Funcionário '", nome, "' cadastrado com sucesso!\n")
							pare

						caso contrario:
							escreva("-> Opção de categoria inválida! Cadastro não realizado.\n")
					}
				}
				senao
				{
					escreva("-> Cadastro não permitido para ", nome, ": idade inferior a 18 anos.\n")
				}
			}

			escreva("\nDigite 'sair' para encerrar ou pressione ENTER para continuar: ")
			leia(opcao_continuar)
		}

		// --- RELATÓRIO FINAL DE SAÍDA ---
		escreva("\n========================================\n")
		escreva("         RESUMO DOS CADASTROS\n")
		escreva("========================================\n")
		escreva("Quantidade total de cadastros: ", qtd_todos, "\n")

		escreva("\nQuantidade por categoria:\n")
		escreva("- Alunos: ", qtd_alunos, "\n")
		escreva("- Professores: ", qtd_professores, "\n")
		escreva("- Funcionários: ", qtd_funcionarios, "\n")

		escreva("\nLista dos nomes cadastrados:\n")
		se (qtd_todos > 0)
		{
			para (i = 0; i < qtd_todos; i++)
			{
				escreva(i + 1, ". ", todos_cadastrados[i], "\n")
			}
		}
		senao
		{
			escreva("Nenhum cadastro válido foi realizado.\n")
		}

		escreva("========================================\n")
	}
}
