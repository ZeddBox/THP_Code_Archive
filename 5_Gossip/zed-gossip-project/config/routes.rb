Rails.application.routes.draw do
  #home
  root to: 'gossips#index'

  #pages menu
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'

  #pages gossips
  resources :gossips do
    resources :comments, only: [:create, :edit, :update, :destroy]
    resources :like, only: [:create, :destroy]
  end

  #users
  resources:users, only: [:new, :create, :show]
  #cities
  resources:cities, only: [:show]
  #sessions
  resources:sessions, only: [:new, :create, :destroy]

end
