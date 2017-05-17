Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :traumas
  resources :first_aid_items
  resources :posts

  get "/", to: "home#index"
  get "/traumas", to: "traumas#index"
  get "/traumas/:id", to: "traumas#show"

  get "/first_aid", to: "first_aid_items#index"
  get "/first_aid/:id", to: "first_aid_items#show"

  resources :posts do
  end


    put "like/:id", to: "posts#upvote", as: :like
    put "dislike/:id", to: "posts#downvote", as: :dislike

end
