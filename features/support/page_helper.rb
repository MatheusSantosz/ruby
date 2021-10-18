Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
    def busca_passagem
        @busca_passagem ||= Busca_passagem.new
    end
    
end