Rails.application.routes.draw do
  resources :uploads, only: [:new, :create, :show]
  root 'uploads#new'
end
