class CategoriesController < ActionController::API
  def show
    category_id = params[:id]
    # Paste your code here
    category = Category.find(category_id)
    render json: { category: {
                     name: category.name,
                     products: category.products.map { |p| { 
                       name: p.name,
                       price: { value: p.price.value },
                       images: p.images.map { |i| { id: i.id } }
                     }}
                   }
                 }, status: :ok
  end
end

