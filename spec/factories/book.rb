FactoryBot.define do
    factory :book do
        genre           { Faker::Book.genre }
        author          { Faker::Book.author }
        image           { "image" }
        title           { Faker::Book.title }
        publisher       { Faker::Book.publisher }
        year            { '1990' }
    end
  end