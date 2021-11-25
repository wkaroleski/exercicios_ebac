            #language: pt

            Funcionalidade: Tela de login
            Como cliente do portal EBAC-SHOP
            quero me autenticar
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@gmail.com.br"
            E a senha "teste@123"
            Então deve ser encaminhado para a tela de "checkout"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxxeeww@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uam mensagem de alerta "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@gmail.com.br"
            E a senha "3234@uyts"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuário
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                 | senha       |
            | "joao@gmail.com.br"     | "teste@123" |
            | "wagner@hotmail.com.br" | "teste@123" |
            | "fernanda@live.com.br"  | "teste@123" |
            | "alvin@yahoo.com.br"    | "teste@123" |
            | "simon@multimak.com.br" | "teste@123" |