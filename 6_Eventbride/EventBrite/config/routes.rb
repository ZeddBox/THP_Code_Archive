Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  
  resources :users
  resources :events do
    resource :attendances, only: [:create]
  end
end
