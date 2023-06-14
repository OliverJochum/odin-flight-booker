Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "flights#index"

  resources :bookings do
    resources :flights
    resources :passengers
  end

  resources :passengers do
    resources :flights
  end

  resources :airports do
    resources :flights
  end
end
