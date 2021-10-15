require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  test "usuario faz cadastro com dados válidos" do 
    visit "/" 
    click_on "Cadastrar-se"
    
    fill_in "Nome", with: "Darth Vader "
    fill_in "E-mail", with: "dvader@imperio.com"
    fill_in "Senha", with: "minhasenha"
    fill_in "Confirme sua senha", with: "minhasenha"

    click_on "Cadastrar"

    assert_text "Cadastro Realizado com Sucesso!"
    
  end

  test "usuario faz cadastro com dados invalidos" do 
    visit '/'
    click_on "Cadastrar-se"
    click_on "Cadastrar"

    
    assert_text "Erro ao salvar"
  end
end
