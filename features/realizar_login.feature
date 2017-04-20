  # language: pt
  # encoding: utf-8
  
  Funcionalidade: Sodexo
  Eu como cliente Sodexo
  Quero realizar o login
  Para que eu possa acessar minha conta
  
  @login
  Cenario: Fazer login
  Dado que eu acesse o site sodexo club
  E clique no botao de logar
  Quando eu preencher os campos com email e senha
  Então o cadastro deve ser realizado com sucesso
  