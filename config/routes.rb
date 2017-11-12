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
  
end
