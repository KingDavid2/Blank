FactoryBot.define do
  factory :user do
    pass = 'password'
    email { FFaker::Internet.email }
    password { pass }
    password_confirmation { pass }
  end
end
