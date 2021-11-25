            #language: pt

            Funcionalidade: Configurar produto
            Como cliente EBAC-Shop
            Quero Configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto

            Cenário: Escolha de tamanho e cor
            Quando eu selecionar o campo "tamanho"
            E quando eu selecionar o campo "cor"
            Então deve ser liberado o botão "comprar"

            Cenário: Escolha de tamanho fora de estoque
            Quando eu selecionar o campo "tamanho"
            E o produto estiver com estoque "esgotado"
            Então deve se exibir mensagem de alerta "Fora de estoque"

            Cenário: Escolha de cor fora do estoque
            Quando eu selecionar o campo "cor"
            E o produto estiver com estoque "esgotado"
            Então deve se exibir mensagem de alerta "Produto com estoque esgotado, selecione outra cor"

            Cenário: Selecionar quantidade
            Quando eu selecionar  "quantidade"
            E a quantidade for menor que "10"
            Então posso selecionar o campo "comprar"

            Cenario: Selecionar mais de 10 produtos
            Quando eu selecionar "quantidade"
            E a quantidade for mais que "10"
            Então deve se exibir uma mensagem de alerta "Máximo de produtos por cliente atingido"

            Esquema do Cenário: Verificar estoque
            Quando eu selecionar <tamanho>
            E quando eu seleciocar <cor>
            Então verificar o disponibilidade de <quantidade>

            Exemplos:
            | tamanho | cor        | quantidade |
            | "XS"    | "azul"     | "130"      |
            | "S"     | "azul"     | "100"      |
            | "M"     | "azul"     | "40"       |
            | "L"     | "azul"     | "23"       |
            | "XL"    | "azul"     | "20"       |
            | "XS"    | "vermelha" | "130"      |
            | "S"     | "vermelha" | "100"      |
            | "M"     | "vermelha" | "40"       |
            | "L"     | "vermelha" | "23"       |
            | "XL"    | "vermelha" | "20"       |
            | "XS"    | "laranja"  | "130"      |
            | "S"     | "laranja"  | "100"      |
            | "M"     | "laranja"  | "40"       |
            | "L"     | "laranja"  | "23"       |
            | "XL"    | "laranja"  | "20"       |
