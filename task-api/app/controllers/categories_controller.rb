class CategoriesController < ActionController::API
  def show
    category_id = params[:id]
    # Paste your code here
    category = Category.find(category_id)
    render json: { category:
                   {
                     name: category.name,
                     products: products_serialize(category)
                   } }
  end

  private

  def products_serialize(category)
    category.products.map do |product|
      {
        name: product.name,
        price: { value: product.price.value },
        images: product.images.map { |i| { id: i.id } }
      }
    end
  end
end
