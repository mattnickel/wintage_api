Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :products
  
  namespace :api, defaults: {format: :json} do
    namespace :v1 do 
      devise_scope :user do
        post "sign_up", to: "registrations#create"
        post "sign_in", to: "sessions#create"
      end
      resources :products
    end
  end
end
