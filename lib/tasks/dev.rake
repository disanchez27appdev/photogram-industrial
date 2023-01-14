task sample_user_data: :environment do
  
  p "creating sample data"
  
  12.times do
    name = Faker::Name.first_name
    new_user = User.create(
      email: "#{name}@gmail.com",
      #password: Faker::String.random(length: 8),
      username: "#{name}"+Faker::String.random(length: 3),
      likes_count: Faker::Number.number(digits: 3),
      comments_count: Faker::Number.number(digits: 2)
    )
  end
  p "#{User.count} users created"
end
