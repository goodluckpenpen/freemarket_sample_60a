class Item < ApplicationRecord

  mount_uploader :image, ImageUploader

  belongs_to :user, foreign_key: 'user_id'
  belongs_to :category
  belongs_to :brand
  belongs_to :condition
  belongs_to :delivery_area
  belongs_to :delivery_day
  belongs_to :delivery_fee
  belongs_to :delivery_method
  belongs_to :size
  has_many :images, dependent: :destroy

  accepts_nested_attributes_for :images

  def previous
    user.items.order('created_at desc, id desc').where('created_at <= ? and id < ?', created_at, id).first
  end

  def next
    user.items.order('created_at desc, id desc').where('created_at >= ? and id > ?', created_at, id).reverse.first
  end


  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true
end