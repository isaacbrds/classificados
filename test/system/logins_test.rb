require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  def setup
    @user = FactoryBot.create(:user, password: "secret", password_confirmation: "secret")
  end
  test "login com crendenciais valido" do
    

    login_as(@user)

    assert_text 'Bem vindo Darth Vader'
  end
  
  test "login com crendenciais invalido" do

    login_as(@user, password: "1secret")
    
    
    assert_equal new_session_path, current_path
    assert_text 'Email ou Senha inválido'
  end
end
