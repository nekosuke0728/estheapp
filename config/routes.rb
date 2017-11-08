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
  
end
