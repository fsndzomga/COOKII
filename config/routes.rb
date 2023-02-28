Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :meals do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index update]
end
