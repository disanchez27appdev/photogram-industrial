task sample_data: :environment do
  
  p "creating sample users"
  
  12.times do
    name = Faker::Name.first_name
    new_user = User.create(
      email: "#{name}@gmail.com",
      password: Faker::Alphanumeric.alphanumeric(number: 6),
      username: "#{name}"+Faker::Alphanumeric.alphanumeric(number: 3),
      private: ["true", "false"].sample
    )
    #p new_user.errors.full_messages
  end
  
  p "#{User.count} users created, here's an example:"
  p User.all.order(id: :desc).first


  p "creating sample photos"

  100.times do
    new_photo = Photo.create(
      
    )


end
