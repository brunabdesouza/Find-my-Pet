Rails.application.routes.draw do

  get '/shelters/search' => 'shelters#search'

  resources :shelters

  resources :pets

end
