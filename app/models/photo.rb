class Photo < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :comments, class_name: "Comment"
  has_many :likes, class_name: "Like"
end
