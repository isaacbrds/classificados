FactoryBot.define do 
  factory :user do 
    name {"Darth Vader"}
    sequence(:email) { |n| "vader_#{n}@empire.com"}
    password {"secret"}
    password_confirmation {"secret"}
  end
end