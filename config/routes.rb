Rails.application.routes.draw do
  devise_for :users
	root to: 'dashboard#home'
  get 'dashboard/home'
  get 'dashboard/cart'
  get 'dashboard/add_shopping_cart_item', as: :add_cart_item
  delete 'dashboard/clear_cart', as: :clear_cart
  resources :accessory_types
  resources :accessories
  resources :guitar_models
  resources :brands
  resources :guitars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
