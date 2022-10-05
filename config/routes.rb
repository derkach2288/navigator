Rails.application.routes.draw do
  scope :admin do
    devise_for :users, :controllers => {:registrations => "registrations"}
    root to: "pages#index"
    resources :pages
  end
  
end
