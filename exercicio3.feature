#language: pt

            Funcionalidade: Tela de cadastro
            Como cliente do Portal EBAC
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu me cadastre no portal EBAC

            Esquema do Cenário: Cadastro com sucesso
            Quando eu digitar o usuário <nome> <sobrenome> <pais> <endereco> <cep> <cidade> <telefone>
            E o <endereco de email>
            Então deve exibir uma mensagem "Usuário cadastrado"

            Esquema do Cenário: Cadastro sem sobrenome
            Quando eu digitar o usuário <nome> <pais> <endereco> <cep> <cidade> <telefone>
            E o <endereco de email>
            Então deve exibir um alerta "Pfv preencha todos os campos com *"

            Esquema do Cenário: Cadastro sem sobrenome
            Quando eu digitar o usuário <nome>  <sobrenome> <pais> <endereco> <cep> <cidade> <telefone>
            E o e-mail "joao.silva.hotmail.com"
            Então deve exibir um alerta "Verifique suas informações, E-mail inválido"

            Exemplos:
            | nome | sobrenome | pais   | endereco       | cep       | endereco de email      |
            | João | Silva     | Brasil | Alameda brasil | 04343-080 | joao.silva@hotmail.com |