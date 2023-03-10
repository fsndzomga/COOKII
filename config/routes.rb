Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :meals do
    resources :bookings, only: %i[new create] # A-t-on besoin d'une show pour un booking?
  end

  resources :bookings, only: %i[show index edit update destroy] do
    member do
      patch 'confirm', to: "bookings#confirm"
      patch 'decline', to: "bookings#decline"
    end
    resources :reviews, only: %i[new create]
  end

  get 'dashboard', to: "pages#dashboard"

  get 'meals/index/map', to: "meals#map", as: :map
end
