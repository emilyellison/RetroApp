RetroApp::Application.routes.draw do

  root to: 'teams#index'

  resources :teams
  resources :retros, except: [ :new ]
  resources :notes, only: [ :create, :destroy ]

end
