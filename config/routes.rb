Rails.application.routes.draw do

  resources :dish_images
  devise_for :users ,controllers: {omniauth_callbacks: 'omniauth_callbacks'}

  namespace :admin do
      resources :users
      resources :offers
  end

  scope "(:locale)" do

    # devise_for  :users, skip: omniauth_callbacks: 'omniauth_callbacks'
    match 'users/edit_profile' => 'users#edit_profile', via: [:get, :patch], as: :edit_profile
    #devise_for :users
    root :to => 'home#index'
    get 'home/index'
    # get 'static_pages/about_us', as: "about_us"
    get 'static_pages/about_us'


    resources :chefs do
        resources :dishes
        resources :offers
    end
    
    resources :dishes
    resources :offers
    get '/requests', to: "orders#requests"

    resources :orders

    resources :order_allergies
    resources :addresses

    resources :tag_dishes
    resources :tags
    resources :favorite_dishes

    resources :dish_evaluations do
      member do
        get "edit_comment", to: :edit_comment
      end
    end

    resources :dish_ingredients
    resources :user_allergies
    resources :allergies
    resources :followings
    resources :ingredients
    resources :delivery_people
    resources :contacts, only: [:new, :create]

    resources :users, :only => [:show], path: ''
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
