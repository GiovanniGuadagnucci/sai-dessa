Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :questions, only: [] do
    resources :answers, only: %i[create]
  end
  resources :educations, only: :show
  resources :answers, only: [:update]

  get '/fase', to: 'pages#fase'
  # get '/meio', to: 'pages#meio'
  get '/fim', to: 'pages#fim'
  get '/educacao', to: 'educations#index'
  get '/questoes', to: 'questions#index'
  post '/nextstep', to: 'questions#nextstep'
  get '/jornada_final', to: 'pages#jornada_final'
  get '/perfil', to: 'pages#perfil'
end
