require 'faker'

# seed cities
10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip
  )
end

# seed users
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 3, supplemental: true),
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(number: 10),
    age: Faker::Number.within(range: 15..50),
    city: City.all.sample
  )
end

# seed gossips
20.times do
  Gossip.create(
    title: Faker::Marketing.buzzwords,
    content: Faker::Lorem.paragraph_by_chars(number: 750, supplemental: false),
    user: User.all.sample
  )
end

