task sample_data: :environment do
  
  # p "creating sample users"
  
  # 12.times do
  #   name = Faker::Name.first_name
  #   new_user = User.create(
  #     email: "#{name}@gmail.com",
  #     password: Faker::Alphanumeric.alphanumeric(number: 6),
  #     username: "#{name}"+Faker::Alphanumeric.alphanumeric(number: 3),
  #     private: ["true", "false"].sample
  #   )
  # end
  
  # p "#{User.count} users created."
  # p "Here's an example user:"
  # p User.all.order(id: :desc).first


  p "creating sample photos"

  100.times do
    new_photo = Photo.create(
     owner_id: User.all.sample.id,
     caption:  Faker::Hipster.sentence(word_count: 10),
     image:   "http://www.google.com"
    )
    p new_photo.errors.full_messages
  end

  p "#{Photo.count} photos created."
  p "Here's an example:"
  p Photo.all.order(id: :desc).first


  p "creating sample follow request."

  10.times do
    new_request = Follow_request.create(
     sender_id: User.all.sample.id,
     sender_id: User.all.sample.id,
     caption:  Faker::Hipster.sentence(word_count: 10),
     image:   "http://www.google.com"
    )
    p new_photo.errors.full_messages
  end

  p "#{Photo.count} photos created."
  p "Here's an example:"
  p Photo.all.order(id: :desc).first

end
