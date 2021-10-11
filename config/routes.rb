Rails.application.routes.draw do
  resources :albums
  root "albums#index"
  get "albums/:id", to: "albums#show"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
