Rails.application.routes.draw do
  get 'users/show'

  devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :contributions
  
  resources :users
  
  root 'contributions#index'
end
