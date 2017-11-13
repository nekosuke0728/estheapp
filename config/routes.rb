Rails.application.routes.draw do

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

  namespace :accounts do
    get :users
    get :user_show
    get :staffs
    get :staff_show
  end

  resources :user_infos, except:[:index, :destroy]
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
  resources :item_types
  
end
