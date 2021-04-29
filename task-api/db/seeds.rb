# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
category = Category.create(name: 'category-1')
category.products.create([{ name: 'Product-1' }, { name: 'Product-2'}])
puts Product.all
Product.all.each do |p|
  id = p.id
  Price.create(value: id * 100, product_id: id)
  2.times do |i|
    Image.create(url: "picture-#{id}#{i}.jpg", product_id: id)
  end
end

