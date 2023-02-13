Rails.application.routes.draw do
  resources :categories
    namespace :admin do
        devise_scope :user do
            get 'invitation', to: 'invitations#new'
        end
        resources :users, only: [:index]
        resources :invites, only: [:index]
        resources :companies, except: [:show]
    end

    devise_for :users, :controllers => {:registrations => "registrations", invitations: 'invitations'}
    root to: "pages#index"
    resources :pages
  
end
