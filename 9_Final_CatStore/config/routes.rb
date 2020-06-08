Rails.application.routes.draw do
  get 'items/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  resources :items, path: 'chat' do
    resources :comments
  end
  resources :carts, only: [:show, :update, :destroy], path: 'panier'
  resources :users, only: [:show, :update, :edit], path: 'profil'
  resources :charges, only: [:new, :create], path: 'paiement'


  namespace :admin do
    root to: 'admin/items#index'
    resources :dashboard, only: [:index]
    resources :users, path: 'profil'
    resources :orders, path: 'paiement'
    resources :items, path: 'chat' do
      resources :comments
    end
  end

end
