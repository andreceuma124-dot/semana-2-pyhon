numero = float(input("Digite o 1º número: "))

soma = numero
maior = numero
menor = numero

for i in range(2, 6):
    numero = float(input(f"Digite o {i}º número: "))
    soma += numero
    
    if numero > maior:
        maior = numero
    if numero < menor:
        menor = numero

media = soma / 5

print("\n--- RESULTADOS ---")
print(f"Soma: {soma}")
print(f"Média: {media:.2f}")
print(f"Maior número: {maior}")
print(f"Menor número: {menor}")