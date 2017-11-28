User.destroy_all
Question.destroy_all
Response.destroy_all

20.times do |index|
  User.create!(name: Faker::LordOfTheRings.character,
                  email: Faker::Internet.email,
                  password_hash: Faker::Internet.password,
                  password_salt: Faker::Code.asin,
                  admin: false,
                  privilege: true,)
end

100.times do |index|
  Question.create!(question: Faker::ChuckNorris.fact,
                  category: Faker::Hacker.noun,
                  user_id: rand((User.first.id)..(User.first.id+19)))
end

250.times do |index|
  Response.create!(response: Faker::Hacker.say_something_smart,
                  best: false,
                  user_id: rand((User.first.id)..(User.first.id+19)),
                  question_id: rand((Question.first.id)..(Question.first.id+99)))
end


p "Created #{User.count} users"
p "Created #{Question.count} questions"
p "Created #{Response.count} responses"
