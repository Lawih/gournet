Rails.application.routes.draw do
  
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup

  #devise_for :users
  root :to => 'home#index'
  get 'home/index'

  resources :order_allergies
  resources :addresses
  resources :offers
  resources :orders
  resources :tag_dishes
  resources :tags
  resources :favorite_dishes
  resources :dish_evaluations
  resources :dish_ingredients
  resources :user_allergies
  resources :allergies
  resources :followings
  resources :ingredients
  resources :delivery_people
  resources :dishes
  resources :chefs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
