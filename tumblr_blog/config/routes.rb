Rails.application.routes.draw do

  get 'comments/index'

  get 'comments/new'

  get 'comments/show'

  get 'comments/destroy'

  get 'sessions/new'
  get 'clear' => 'sessions#clear'

  resources :users
  resources :posts
  resources :comments

  get 'login' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root 'users#new'

end
