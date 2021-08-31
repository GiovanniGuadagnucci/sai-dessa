Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/fase', to: 'pages#fase'
end
