Rails.application.routes.draw do
  get 'educations/show'
  devise_for :users
  root to: 'pages#home'

  resources :educations, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
