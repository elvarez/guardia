Rails.application.routes.draw do
  
  resources :events do
    resources :reservations, only: [:index, :new, :create]
  end
end
