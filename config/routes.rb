Rails.application.routes.draw do
  resources :menus
  resources :trucks
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  
  resources :reviews
  resources :users
   get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  # get root, to: 'users#login', as: root
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
