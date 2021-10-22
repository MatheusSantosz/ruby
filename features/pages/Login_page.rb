class Login < SitePrism::Page
  set_url '/'
  element :welcome, 'div[class="welcome"]'
  element :btn_login, 'li[style="float:right"]'
  element :ipt_email, 'input[id="authEmail"]'
  element :ipt_pass, 'input[id="authPass"]'
  element :btn_entrar, 'button[class="btn btn-primary btn-block btn-flat"]'
  

  def click_button_login
    btn_login.click
  end

  def login_user
      
      ipt_email.set "bruno_bas@outlook.com"
      ipt_pass.set "xxxxxxxxx"
  end

  def click_button_enter
      btn_entrar.click
  end  
  
  
  def validate_page
   # text = "Seja bem vindo ao Qa.Coders"
    welcome1.find('[class="welcome"]').text

    if welcome1.text.eql?("Seja bem vindo ao Qa.Coders") != true
        raise "Expected element: Seja bem vindo ao Qa.Coders, but returned: #{welcome.text}"

    end
    
  end


end
