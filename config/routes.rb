Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  root to: 'pages#index'
  resources :pages, only: [:index, :show]
end
