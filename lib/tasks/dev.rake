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


  # p "creating sample photos"

  # 100.times do
  #   new_photo = Photo.create(
  #    owner_id: User.all.sample.id,
  #    caption:  Faker::Hipster.sentence(word_count: 10),
  #    image:   "http://www.google.com"
  #   )
  # end

  # p "#{Photo.count} photos created."
  # p "Here's an example:"
  # p Photo.all.order(id: :desc).first


  p "creating sample follow request."

  20.times do
    new_request = FollowRequest.create(
     sender_id: User.all.sample.id,
     recipient_id: User.all.sample.id,
     status: ["pending", "rejected", "accepted"].sample 
    )
    p new_request.errors.full_messages
  end

  p "#{FollowRequest.count} follow requests created."
  p "Here's an example:"
  p FollowRequest.all.order(id: :desc).first

end
