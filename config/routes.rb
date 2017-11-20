Rails.application.routes.draw do

  root 'home#top'

  get '/test', to: 'home#test'

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
  resources :order_products
  resources :orders, except:[:edit, :update, :destroy]
  resources :payments
  resources :cart_products
  resources :products
  # resources :categories, except:[:show, :new, :edit]
  resources :brands
  resources :carts
  resources :reservations
  resources :skin_trouble_types
  resources :item_types

# ------------------------------------------------------

  # namespace :staff do 
  #   authenticate :staff do 
  #     resources :products
  #   end
  # end

  # namespace :user do 
  #   resources :products , only: [:index]    
  #   authenticate :user do 
  #     resources :products, only: [:create]    
  #   end
  # end

# ------------------------------------------------------

namespace :staff do
  authenticated :staff do
    resources :categories, except:[:show, :new, :edit]
  end
end



end
