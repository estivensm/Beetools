Rails.application.routes.draw do
  resources :document_types
  resources :created_fields
  resources :fields
  resources :process_maps
  resources :proces
  resources :positions

  root 'home#index'
  get "user", to: "home#user", as: "user"
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  devise_scope :user do
    post "create_user", to: "users/registrations#create_user", as: "create_user" 
  end
  get "all_users", to: "home#create_user", as: "users"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
