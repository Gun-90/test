Rails.application.routes.draw do
  resources :reviews
  resources :users
  # get root, to: 'users#login', as: root
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
