class Cadastro < SitePrism::Page
    set_url '/'
    element :btn_login, 'li[style="float:right"]'
    element :btn_cadastrar, '[class= "link-no-arquive ng-binding"]'
    element :ipt_name, 'input[id="authName"]'
    element :ipt_email, 'input[id="authEmail"]'
    element :ipt_pass, 'input[id="authPass"]'
    element :ipt_passConfirm, 'input[id="authConfirmPass"]'
    element :btn_registrar, 'button[class="btn btn-primary btn-block btn-flat"]'
    
  

    def click_button_login
        btn_login.click
      end

    def click_button_cadastrar
        btn_cadastrar.click
    end

    def user_register
        ipt_name.set "Mario Magaulo"
        ipt_email.set "magaulo@gmail.com.br"
        ipt_pass.set "P@r4l3l3lp1p3d0"
        ipt_passConfirm.set "P@r4l3l3lp1p3d0"

    end

    def click_button_enter
        btn_registrar.click
        
    end  
    
    
    


  end