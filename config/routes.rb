Rails.application.routes.draw do
    namespace :admin do
        resources :users, only: [:index]
    end

    devise_for :users, :controllers => {:registrations => "registrations"}
    root to: "pages#index"
    resources :pages
  
end
