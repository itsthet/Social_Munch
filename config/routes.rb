Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :recipes, only: [:index, :show] do
    resources :reviews, only: [:create, :new]
    resources :favourites, only: [:create]

  end
  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :messages, only: [:create]
  end
  resources :favourites, only: [:destroy]


  get "/dashboard", to: "pages#dashboard", as: :dashboard



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
