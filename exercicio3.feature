            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu fiz login e acessei o checkout

            Cenário: Cadastro Válido
            Quando eu digitar todos os dados obrigatórios com "*"
            E clicar em "finalizar compra"
            Então receberei a mensagem "compra efetuada"

            Cenário: Cadastro Inválido
            Quando eu deixar lacunas em branco nos dados com "*"
            Então deve se exibir a mensagem de alerta "Preencha os campos obrigatórios"

            Cenário: Email inválido
            Quando eu inserir o email "teste.com.br"
            Então deve ser exibir a mensagem de alerta "Email inválido"

            Esquema do Cenário: Email válido
            Quando eu digitar <email>
            Então devo receber a mensagem "email válido"

            Exemplos:
            | email             |
            | "@gmail.com.br"   |
            | "@hotmail.com.br" |
            | "@live.com.br"    |
            | "@yahoo.com.br"   |
            | "@teste.com.br"   |