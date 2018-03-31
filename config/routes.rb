Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'players#index'

  # Players Controller routes
  get 'players' => 'players#index'

  # To edit individual Players
  get 'players/:id/edit' => 'players#edit'
  patch 'players/:id' => 'players#update'

  # To create a new player
  get 'players/new' => 'players#new'
  post 'players' => 'players#create'

  # To delete a particular player
  delete 'players/:id' => 'players#destroy'

  # To obtain individual player ID's dynamically
  get 'players/:id' => 'players#show', as: 'player_show'
end
