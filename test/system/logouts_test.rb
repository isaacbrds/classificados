require "application_system_test_case"

class LogoutsTest < ApplicationSystemTestCase
 test "conseguir fazer logout de usuario" do 
  user =FactoryBot.create(:user)
  login_as(user)

  click_on "Sair"

  assert_equal new_session_path, current_path
  assert_text "Sessão Finalizada"
 end
end
