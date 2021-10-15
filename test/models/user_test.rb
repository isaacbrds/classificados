require "test_helper"

class UserTest < ActiveSupport::TestCase
   test "nome é obrigatório" do
     user = User.new(name: nil)

     user.save 

     assert user.errors[:name].any?
   end

   test "email é obrigatório" do
    user = User.new(email: nil)

    user.save 

    assert user.errors[:email].any?

    user = User.new(email: "invalido")

    user.save 

    assert user.errors[:email].any?

    user = User.new(email: "valido@email.com")

    user.save 

    refute user.errors[:email].any?
  end

  test "Email é único" do
    user = User.create(name: "Darth", email: "valido@email.com", password: "secret", password_confirmation: "secret")
    other = User.create( email: "valido@email.com" )
    
    assert other.errors[:email].any?
  end
end
