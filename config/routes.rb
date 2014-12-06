Rails.application.routes.draw do

  root 'events#index'

  
  resources :events do
    resources :reservations, only: [:index, :new, :create]
  end
end
