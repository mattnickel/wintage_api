class Product < ApplicationRecord
  has_many_attached :images
  has_one_attached :primary_image
  has_and_belongs_to_many :categories
  has_many :favorites
end