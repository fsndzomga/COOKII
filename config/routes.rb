Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :meals do
    resources :bookings, only: %i[new create] # A-t-on besoin d'une show pour un booking?
  end

  resources :bookings, only: %i[show index edit update destroy]

  get 'dashboard', to: "pages#dashboard"
end
