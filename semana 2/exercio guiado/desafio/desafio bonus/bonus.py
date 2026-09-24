# Listas para armazenar os nomes por categoria e gerais
alunos = []
professores = []
funcionarios = []
todos_cadastrados = []

opcao_continuar = ""

# 4. WHILE: Permite continuar cadastrando até digitar "sair"
while opcao_continuar.lower() != "sair":
    qtd_cadastros = int(input("\nQuantos cadastros deseja realizar agora? "))

    # 3. FOR: Executa N cadastros
    for i in range(1, qtd_cadastros + 1):
        print(f"\n--- Cadastro {i} de {qtd_cadastros} ---")
        nome = input("Digite o nome: ").strip()
        idade = int(input("Digite a idade: "))

        # 1. IF/ELIF/ELSE: Validação de idade mínima (>= 18)
        if idade >= 18:
            print("\nTipo de cadastro:")
            print("1 = Aluno")
            print("2 = Professor")
            print("3 = Funcionário")
            
            tipo_opcao = int(input("Escolha a opção (1-3): "))

            # 2. MATCH/CASE: Seleção da categoria
            match tipo_opcao:
                case 1:
                    alunos.append(nome)
                    todos_cadastrados.append(f"{nome} (Aluno)")
                    print(f"-> Aluno '{nome}' cadastrado com sucesso!")
                case 2:
                    professores.append(nome)
                    todos_cadastrados.append(f"{nome} (Professor)")
                    print(f"-> Professor '{nome}' cadastrado com sucesso!")
                case 3:
                    funcionarios.append(nome)
                    todos_cadastrados.append(f"{nome} (Funcionário)")
                    print(f"-> Funcionário '{nome}' cadastrado com sucesso!")
                case _:
                    print("-> Opção de categoria inválida! Cadastro não realizado.")
        else:
            print(f"-> Cadastro não permitido para {nome}: idade inferior a 18 anos.")

    opcao_continuar = input("\nDigite 'sair' para encerrar ou pressione ENTER para continuar: ").strip()

# --- RELATÓRIO FINAL DE SAÍDA ---
total_geral = len(todos_cadastrados)

print("\n" + "=" * 40)
print("         RESUMO DOS CADASTROS")
print("=" * 40)
print(f"Quantidade total de cadastros: {total_geral}")

print("\nQuantidade por categoria:")
print(f"- Alunos: {len(alunos)}")
print(f"- Professores: {len(professores)}")
print(f"- Funcionários: {len(funcionarios)}")

print("\nLista dos nomes cadastrados:")
if total_geral > 0:
    for idx, item in enumerate(todos_cadastrados, start=1):
        print(f"{idx}. {item}")
else:
    print("Nenhum cadastro válido foi realizado.")

print("=" * 40)