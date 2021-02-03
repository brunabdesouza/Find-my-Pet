Rails.application.routes.draw do

  root to: 'pages#home'

  get '/shelters/search' => 'shelters#search'

  resources :shelters

  resources :pets

end
