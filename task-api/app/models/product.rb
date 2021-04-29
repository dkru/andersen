class Product < ApplicationRecord
  belongs_to :category
  has_one :price
  has_many :images
end
