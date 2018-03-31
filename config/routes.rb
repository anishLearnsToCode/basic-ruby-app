Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'players#index'

  # Players Controller routes
  get 'players' => 'players#index', as: 'players_index'

  # To edit individual Players
  get 'players/:id/edit' => 'players#edit', as: 'players_edit'
  patch 'players/:id' => 'players#update'

  # To create a new player
  get 'players/new' => 'players#new'
  post 'players' => 'players#create'

  # To delete a particular player
  delete 'players/:id' => 'players#destroy'

  # To Archive a particular player
  get 'players/:id/archive' => 'players#archive', as: 'players_archive'

  # To obtain individual player ID's dynamically
  get 'players/:id' => 'players#show', as: 'players_show'
end
