Rails.application.routes.draw do
  root 'tasks#index'
  resources :account_sessions, only: [:new, :create, :destroy]

  resources :tasks do
    put :sort
  end
  resources :accounts

end
