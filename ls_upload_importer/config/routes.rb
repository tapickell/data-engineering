Rails.application.routes.draw do
  resources :uploads, only: [:new, :create, :index, :show]
  root 'uploads#new'
end
