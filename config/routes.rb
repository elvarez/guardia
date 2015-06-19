Rails.application.routes.draw do

  devise_for :users
  root 'events#index'

  get 'reservations/myreservations'
  
  resources :events do
    resources :reservations, only: [:index, :new, :create]
  end

  get 'seatmaps/newmap'
  post 'seatmaps/new'

  resources :seatmaps
end
