Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'players' => 'players#index'

  # To obtain individual player ID's dynamically
  get 'players/:id' => 'players#show'
  get 'players/new' => 'players#new'
  post 'players' => 'players#create'
end
