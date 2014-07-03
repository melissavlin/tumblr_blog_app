Rails.application.routes.draw do


  get 'sessions/new'
  get 'clear' => 'sessions#clear'

  resources :users
  resources :posts do
    resources :comments, shallow: true
  end

  get 'login' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root 'users#new'

end
