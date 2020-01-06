Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rides 
  resources :ride_requests
  resources :users

  mount Raddocs::App => "/docs"
end
