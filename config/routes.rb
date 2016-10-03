Rails.application.routes.draw do

  devise_for :users ,controllers: { registrations: 'registrations', omniauth_callbacks: 'omniauth_callbacks'}
  
  scope "(:locale)" do
      
    # devise_for  :users, skip: omniauth_callbacks: 'omniauth_callbacks'
    match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup
    #devise_for :users
    root :to => 'home#index'
    get 'home/index'
    get 'static_pages/about_us'

    resources :users do
        resources :dishes
    end
    resources :chefs, :only => [:index, :show], controller: 'users', type: 'Chef' do
        resources :dishes
    end
    resources :diners, :only => [:index, :show], controller: 'users', type: 'Diner'
    resources :dishes
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
    resources :contacts, only: [:new, :create]

    resources :users, :only => [:show], path: '' do
        resources :dishes
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
