RailsconftutorialsBeeper::Application.routes.draw do
  root to: "alarms#index"
  resources :alarms, only: [:create, :destroy]

  get '/session', to: 'sessions#new', as: :login
  post '/session', to: 'sessions#create', as: :login
  delete '/session', to: 'sessions#destroy', as: :login
end
