# task sample_data: :environment do

#   ## DESTROY EXISTING SAMPLE DATA ##

#   p "Destroying Existing Sample Data"

#   # Like.destroy_all
#   # Comment.destroy_all
#   # Photo.destroy_all
#   # FollowRequest.destroy_all
#   # User.destroy_all

#   ## SAMPLE DANNY ###
#   p "Creating Danny."

#   danny = User.create(
#     email: "danny@danny.com",
#     username: "danny",
#     password: "password",
#     private: false
#   )

#   p "Heeeere's Danny!"

#   p danny

#   ## SAMPLE USERS ###
  
#   p "Creating sample users"
  
#   12.times do
#     name = Faker::Name.first_name
#     new_user = User.create(
#       email: "#{name}@gmail.com",
#       password: Faker::Alphanumeric.alphanumeric(number: 6),
#       username: "#{name}"+Faker::Alphanumeric.alphanumeric(number: 3),
#       private: ["true", "false"].sample
#     )
#   end
  
#   p "#{User.count} users created."
#   p "Here's an example user:"
#   p User.all.order(id: :desc).first

#   ## SAMPLE PHOTOS ###

#   p "Creating sample photos"

#   100.times do
#     new_photo = Photo.create(
#      owner_id: User.all.sample.id,
#      caption:  Faker::Hipster.sentence(word_count: 10),
#      image:   "http://www.robohash.org/"+Faker::Number.number(digits: 4).to_s
#     )
#   end

#   p "#{Photo.count} photos created."
#   p "Here's an example:"
#   p Photo.all.order(id: :desc).first

#   ## SAMPLE COMMENTS ###

#   p "Creating sample comments."

#   200.times do
#     new_comment = Comment.create(
#      photo_id: Photo.all.sample.id,
#      author_id: User.all.sample.id,
#      body: Faker::Hipster.sentence(word_count: 15)
#     )
#   end

#   p "#{Comment.count} comments created."
#   p "Here's an example:"
#   p Comment.all.order(id: :desc).first

#   ## SAMPLE FOLLOW REQUESTS ###

#   p "Creating sample follow requests."

#   100.times do
#     new_request = FollowRequest.create(
#      sender_id: User.all.sample.id,
#      recipient_id: User.all.sample.id,
#      status: ["pending", "rejected", "accepted"].sample 
#     )
#   end

#   p "#{FollowRequest.count} follow requests created."
#   p "Here's an example:"
#   p FollowRequest.all.order(id: :desc).first

#   ### SAMPLE LIKES ###

#   p "Creating sample Likes."

#   300.times do
#     new_like = Like.create(
#      fan_id: User.all.sample.id,
#      photo_id: Photo.all.sample.id, 
#     )
#   end

#   p "#{Like.count} likes created."
#   p "Here's an example:"
#   p Like.all.order(id: :desc).first

# end
