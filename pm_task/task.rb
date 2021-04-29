
# expected = {
#   category: {
#     name: "Продукты",
#     products: [
#       {
#         name: "Хлеб",
#         price: {
#           value: 100.0
#         },
#         images: [ {id: 1}, {id: 2} ]
#       }
#     ]
#   }
# }


class Api::CategoriesController < ApplicationController
  def show
    category_id = params[:id]
    # Paste your code here
  end
end

class Category < ApplicationRecord
  has_many :products

  # == Schema Information
  #
  # Table name: categories
  #
  #  id                :integer          not null, primary key
  #  name              :string
end

class Product < ApplicaitonRecord
  belongs_to :category
  has_one :price
  has_many :images
  # == Schema Information
  #
  # Table name: products
  #
  #  id                :integer          not null, primary key
  #  name              :string
  #  category_id       :integer
end

class Price < ApplicationRecord
  belongs_to :product
  # == Schema Information
  #
  # Table name: prices
  #
  #  id                :integer          not null, primary key
  #  value             :decimal
  #  product_id        :integer
end

class Image < ApplicationRecord
  belongs_to :product
  # == Schema Information
  #
  # Table name: images
  #
  #  id                :integer          not null, primary key
  #  url               :string
  #  product_id        :integer
end
