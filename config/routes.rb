Rails.application.routes.draw do
  devise_for :users
  resources :questions, only: :show
  resources :educations, only: :show

  root to: 'pages#home'
  get '/fase', to: 'pages#fase'
  get '/meio', to: 'pages#meio'
  get '/educacao', to: 'educations#index'
  get '/questoes', to: 'questions#index'
end
