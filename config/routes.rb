Rails.application.routes.draw do

  resources :events, only: [:index, :new, :create]
  resources :reservations, only: [:index, :new, :create]
  resources :seats, only: [:show]
  resources :venues, only: [:show]

end
