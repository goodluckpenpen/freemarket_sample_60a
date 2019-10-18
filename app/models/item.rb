class Item < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :category

  # belongs_to :seller, class_name: "User"
  # belongs_to :buyer, class_name: "User"
end
