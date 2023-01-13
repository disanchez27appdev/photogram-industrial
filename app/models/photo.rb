class Photo < ApplicationRecord
  belongs_to :owner class_name: "User"
  has_many :comment class_name: "Comment"
end
