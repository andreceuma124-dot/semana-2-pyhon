idade = int(input("Digite a sua idade: "))
renda = float(input("Digite a sua renda mensal: "))

if renda >= 10000 and idade >= 30:
    print("Categoria: Diamante")
elif renda >= 5000:
    print("Categoria: Ouro")
elif renda >= 2500:
    print("Categoria: Prata")
else:
    print("Categoria: Bronze")