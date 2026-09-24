print("=== OPERAÇÕES MATEMÁTICAS ===")
print("1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão")
opcao = int(input("Escolha uma opção (1-4): "))

n1 = float(input("Digite o primeiro número: "))
n2 = float(input("Digite o segundo número: "))

match opcao:
    case 1:
        print(f"Resultado da Soma: {n1 + n2}")
    case 2:
        print(f"Resultado da Subtração: {n1 - n2}")
    case 3:
        print(f"Resultado da Multiplicação: {n1 * n2}")
    case 4:
        if n2 != 0:
            print(f"Resultado da Divisão: {n1 / n2:.2f}")
        else:
            print("Erro: Divisão por zero não é permitida.")
    case _:
        print("Opção inválida!")