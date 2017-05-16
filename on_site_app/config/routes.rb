Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :traumas
  resources :first_aid_items

  get "/", to: "home#index"
  get "/traumas", to: "traumas#index"
  get "/traumas/:id", to: "traumas#show"

  get "/first_aid", to: "first_aid_items#index"
end
