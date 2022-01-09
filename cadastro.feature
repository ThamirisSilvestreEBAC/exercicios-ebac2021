#language: pt

            Funcionalidade: Configurar produto
            Como cliente do Portal EBAC
            Quero configurar meu produto de acordo com meu tamanho e gosto
            escolher a quantidade
            Para depois inserir no carrinho


            Contexto:
            Dado que eu que eu adicione um produto ao carrinho

            Esquema do Cenário: Adicionando ao carrinho produto sem cor e tamanho
            Quando eu selecionar o <produto>
            E a <quantidade>
            Então deve exibir um alerta "Pfv selecione a cor e tamanho do produto"

            Esquema do Cenário: Adicionando produto ao carrinho
            Quando eu selecionar o <produto> <quantidade> <cor>
            E o <tamanho>
            Então deve exibir a mensagem "Produto adicionado ao carrinho"

            Esquema do Cenário: Adicionando muitos produtos ao carrinho
            Quando eu selecionar o <produto> <cor> <tamanho>
            E a quantidade igual a "11"
            Então deve exibir a mensagem de alerta "Pfv selecione até 10 produtos "

            Esquema do Cenário: Limpando as selecioções dos produtos
            Quando eu selecionar o <produto> <cor> <tamanho> <quantidade>
            E clique em limpar
            Então deve exibir a mensagem de alerta "Configurações zeradas"

            Exemplos:
            | produto  | quantidade | tamanho | cor    |
            | camiseta | 10         | M       | azul   |
            | camiseta | 1          | G       | rosa   |
            | camiseta | 11         | P       | branco |