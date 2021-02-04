Rails.application.routes.draw do

  post 'user_token' => 'user_token#create'

  get 'users/current' => 'users#current'

  get '/shelters/search' => 'shelters#search'

  resources :users

  resources :shelters

  resources :pets

end
