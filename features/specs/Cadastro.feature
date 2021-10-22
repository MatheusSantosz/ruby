#language: pt

Funcionalidade: Cadastro
-Eu como analista de negocio
-Quero que seja validado a cadstro de usuario
-Para que o usuario seja autenticado com sucesso

@cadastroSucesso
Cenario: Cadastro com sucesso

Dado que eu esteja na pagina de cadastro de "Cadastro de usuario" do Qa.Coders
Quando preencho o formulario de "Cadastro de usuario"
E clico no botão "Salvar"
Entao sou direcionado para a pagina "Home" Logada

