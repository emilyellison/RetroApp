RetroApp::Application.routes.draw do

  root to: 'teams#index'

  resources :teams
  resources :retros, except: [ :edit, :update ]
  resources :notes, only: [ :create, :destroy ]

end
