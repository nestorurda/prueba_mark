Rails.application.routes.draw do
  resources :types
  resources :marks
  get '/subcat',to:'marks#update_subcategory', as:'updatesub'
  get '/api/category/:id', to:'marks#respond_json'
  resources :subcategories
  resources :categories
  root 'marks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
