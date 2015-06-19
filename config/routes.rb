Rails.application.routes.draw do

  get 'welcome/index' => 'welcome#index'
  get 'welcome/about' => 'welcome#about'
  root 'welcome#index'

  devise_for :users

  get 'reservations/myreservations'
  get 'reservations/index'  
  resources :events do
    resources :reservations, only: [:index, :new, :create]
  end

  get 'seatmaps/newmap'
  post 'seatmaps/new'
  resources :seatmaps
end
