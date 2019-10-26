FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    email { Faker::Internet::email }
    password { Faker::Internet::password }
  end
end
