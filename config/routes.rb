Rails.application.routes.draw do
  
    namespace :admin do
        resources :users, only: [:index]
        resources :invites, only: [:index]
        resources :companies, except: [:show]
    end

    devise_for :users, :controllers => {:registrations => "registrations", invitations: 'invitations'}
    root to: "pages#index"
    resources :pages
  
end
