

Dado('que eu esteja na pagina de cadastro de {string} do Qa.Coders') do |string|
  cadastro.load
  cadastro.click_button_login
  cadastro.click_button_cadastrar
  
  

def user_register
    ipt_name.set "Matheus Santos"
    ipt_email.set "italomatheus@gmail.com.br"
    ipt_pass.set "P@r4l3l3lp1p3d0"
    ipt_passConfirm.set "P@r4l3l3lp1p3d0"

end

def click_button_enter
    btn_registrar.click
    
end  
end

Quando('preencho o formulario de {string}') do |string|
  cadastro.user_register
end

Quando('clico no botão {string}') do |string|
  cadastro.click_button_enter
end

Então('sou direcionado para a pagina {string} Logada') do |string|
  expect(page).to have_current_path('https://qacoders-dev-br.umbler.net/home',url: true)
  sleep(5)
end