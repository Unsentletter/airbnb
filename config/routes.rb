Rails.application.routes.draw do
  resources :bookings
  resources :rooms
  devise_for :users
  root 'pages#home'
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
