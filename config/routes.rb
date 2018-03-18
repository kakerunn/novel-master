Rails.application.routes.draw do
<<<<<<< HEAD
=======
  get 'contact/index'

>>>>>>> develop
  get 'another/show'

  get 'love/show'

  get 'mystery/show'

  get 'horror/show'

  get 'scifi/show'

  get 'battle/show'

  get 'fantasy/show'

  get 'users/show'

<<<<<<< HEAD
=======
  get 'contact' => 'contact#index'
  post 'contact/confirm' => 'contact#confirm'
  post 'contact/thanks' => 'contact#thanks'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end

>>>>>>> develop
  devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :contributions

  resources :users

  resources :options, only: [:show]

  root 'contributions#index'
end
