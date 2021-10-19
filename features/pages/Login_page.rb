class Login < SitePrism::Page
    set_url '/'
    element :welcome, 'a[class="welcome"]'
    element :btn_login, 'li[style=float:right]'
    element :ipt_email, 'input[id="authEmail"]'
    element :ipt_pass, 'input[id="authPass"]'
    element :btn_entrar, 'button[class="btn btn-primary btn block btn-flat"'
  
    def click_button_login
      btn_login.click
    end

    def login_user
        btn_login.click
        ipt_email.set "teste@teste.com.br"
        ipt_pass.set "12345678"
    end

    def click_button_enter
      btn_entrar.click
    end  
    
    
    def validate_page
      if welcome.text.eql?("Seja bem vindo ao Qa.Coders") != true
          raise "Expected element: Seja bem vindo ao Qa.Coders, but returned: #{welcome.text}"

      end
      
    end


  end