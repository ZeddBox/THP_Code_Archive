Rails.application.routes.draw do

  get 'gossip/:gossip_id', to: 'dynamic#gossip', as: 'gossip'
  get 'user/:user_id', to: 'dynamic#user', as: "user"
  get 'welcome/:first_name', to: 'dynamic#welcome', as: "welcome_name"
  get 'welcome', to: 'dynamic#welcome', as: 'welcome'
  get 'contact', to: 'static_pages#contact'
  get 'team', to: 'static_pages#team'

end
