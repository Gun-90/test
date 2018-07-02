Rails.application.routes.draw do
  resources :ceo_notices
  resources :customer_notices
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
