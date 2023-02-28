Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :meals do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index update]
end
