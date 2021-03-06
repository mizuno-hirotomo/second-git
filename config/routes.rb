Rails.application.routes.draw do
  
  root to: 'tasks#index'

  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'

  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create]

  resources :tasks, only: [:index, :show, :new, :create]

end