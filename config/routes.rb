RetroApp::Application.routes.draw do

  root to: 'teams#show'

  resources :teams
  resources :retros
  resources :notes [ :create, :destroy ]

end
