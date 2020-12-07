Rails.application.routes.draw do
  get '/login'=> "access#new"
  post '/login' => "access#create"
  delete '/logout' => "access#destroy"
  get 'access/create'
  get 'access/destroy'
  get '/admin', to: "admin#index"
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  root "shopper#index",as: "shopper"
  get 'shopper/index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
