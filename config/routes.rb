Rails.application.routes.draw do
  resources :flames
  root 'flames#index'
  
  post '/flames/show'
  get 'home', to: 'flames#home'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
