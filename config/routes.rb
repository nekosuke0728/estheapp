Rails.application.routes.draw do

  resources :reservations
  root 'home#top'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',    
    registrations: 'users/registrations'
  }

  devise_for :staffs, controllers: {
    sessions: 'staffs/sessions',
    passwords: 'staffs/passwords',    
    registrations: 'staffs/registrations'
  }

  resources :user_infos, except:[:index, :destroy]

  get 'accounts/users'
  get 'accounts/user_show'
  get 'accounts/staffs'
  get 'accounts/staff_show'

  resources :esthe_menus
  resources :news
  resources :news_types
  resources :stocks
  resources :orderproducts
  resources :orders
  resources :payments
  resources :cart_products
  resources :products
  resources :categories
  resources :brands
  resources :carts
  resources :reservations
  
end
