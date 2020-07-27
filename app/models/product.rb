class Product < ApplicationRecord
  has_many :comments
  has_many :images, dependent: :destroy
  belongs_to :user
  belongs_to :category

  accepts_nested_attributes_for :images, allow_destroy: true
end