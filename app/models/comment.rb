class Comment < ApplicationRecord
  belongs_to :author class_name: "User"
  belongs_to :photo class_name: "Photogm"
end