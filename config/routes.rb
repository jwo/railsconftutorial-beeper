RailsconftutorialsBeeper::Application.routes.draw do
  root to: "alarms#index"
  resources :alarms, only: [:create, :destroy]
end
