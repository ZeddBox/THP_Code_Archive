Rails.application.routes.draw do
  devise_for :users
  #home
  root to: 'events#index'

  resources :attendances
  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
