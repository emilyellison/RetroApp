RetroApp::Application.routes.draw do

  root to: 'teams#index'

  resources :teams
  resources :retros
  resources :notes, only: [ :create, :destroy ]

end
