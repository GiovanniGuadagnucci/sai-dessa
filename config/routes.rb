Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :questions, only: [:index, :show]

  get '/fase', to: 'pages#fase'
end
