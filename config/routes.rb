Rails.application.routes.draw do

  devise_for :users
  
  resources :events do
    resources :orders
  end

  root 'events#index'
end
