FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email }
    first_name { Faker::Name.name }
    last_name { Faker::Name.last_name }
    password { Faker::Internet.password }
  end
end
