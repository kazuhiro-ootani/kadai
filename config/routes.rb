Rails.application.routes.draw do
  resources :account_sessions, only: [:new, :create, :destroy]

  resources :tasks
  resources :accounts

end
