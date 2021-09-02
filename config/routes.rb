Rails.application.routes.draw do
  devise_for :users

  resources :educations, only: :show
  root to: 'pages#home'

  resources :questions, only: [] do
    resources :answers, only: %i[create]
  end

  resources :answers, only: [:update]

  get '/fase', to: 'pages#fase'
  get '/meio', to: 'pages#meio'
  get '/educacao', to: 'educations#index'
  get '/questoes', to: 'questions#index'
end
