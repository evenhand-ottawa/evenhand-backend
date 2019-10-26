FactoryBot.define do
  factory :speaker do
    pronouns { Faker::Lorem.words(3) }
    location { Faker::Address.city }
    will_travel { Faker::Boolean.boolean }
    occupation { Faker::Company.name }
    tagline { Faker::Company.catch_phrase }
    image { Faker::Internet.url }
    video { Faker::Internet.url }
    instagram { Faker::Internet.user_name }
    twitter { Faker::Internet.user_name }
    linkedin { Faker::Internet.url }
    website { Faker::Internet.url }
    biography { Faker::Lorem.paragraph }
  end
end
