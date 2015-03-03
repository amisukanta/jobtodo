Rails.application.routes.draw do
  root to: "jobtodos#index"
  resources :jobtodos, only: [:index, :new, :create]
  resource :session, only: [:new, :create]
end
