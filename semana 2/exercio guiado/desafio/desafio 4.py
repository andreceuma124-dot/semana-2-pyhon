SENHA_CORRETA = "1234"
tentativas = 0
acesso_permitido = False

while tentativas < 3 and not acesso_permitido:
    senha_digitada = input("Digite a senha: ")
    tentativas += 1

    if senha_digitada == SENHA_CORRETA:
        acesso_permitido = True
        print("Acesso liberado! Bem-vindo.")
    else:
        if tentativas < 3:
            print(f"Senha incorreta. Tentativas restantes: {3 - tentativas}")

if not acesso_permitido:
    print("\nConta bloqueada! Limite de 3 tentativas excedido.")