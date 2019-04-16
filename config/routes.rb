Rails.application.routes.draw do
  resources :documents
  resources :document_types
  resources :created_fields
  resources :fields
  resources :process_maps
  resources :proces
  resources :positions

  resources :diagnosticos do
    collection { post :import }
  end

  root 'home#index'
  get "user", to: "home#user", as: "user"
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  devise_scope :user do
    post "create_user", to: "users/registrations#create_user", as: "create_user" 
  end
  get "all_users", to: "home#create_user", as: "users"
  patch "document_update/:id/:number", to: "documents#update_docu", as: "document_update"
  
  post "version_document/:id", to: "documents#new_document", as: "nuevo_document"

  post "documents_ready/:id", to: "documents#ready", as: "documents_ready"
  get "pdf_docment/:id", to: "documents#documents_pdf", as: "pdf_document"
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
