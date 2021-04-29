Rails.application.routes.draw do
  match '/category/:id', to: 'categories#show', via: :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
