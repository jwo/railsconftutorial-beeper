RailsconftutorialsBeeper::Application.routes.draw do
  resources :alarms, only: [:create, :destroy]
end
