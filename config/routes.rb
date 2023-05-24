Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: [:edit, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "gardens#index"
end
