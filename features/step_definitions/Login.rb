Dado('que eu esteja na pagina de login do Qa.Coders') do
  login.load
  #login.validate_page
  login.click_button_login
  
end

Quando('informo os dados de acesso') do
  login.login_user
  
end

Então('sou direcionado para a pagina {string}') do |string|
  login.click_button_enter
  
end