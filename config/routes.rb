Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'

  get '/inventories' => 'inventories#index'

  resources :products, :stores, :inventories, :stocks

end
