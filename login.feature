#language: pt

            Funcionalidade: Login na plataforma
            Como cliente do Portal EBAC
            Quero fazer login na plataformar
            Para visualizar meus pedidos


            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "12345678"
            Então deve exibir uma mensgaem de alerta "Usuário ou senha inválidos"