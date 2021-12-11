Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  create "/login", to: "sessions#create"
  destroy "/logout", to: "sessions#destroy"
  get "/me", to: "user#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
