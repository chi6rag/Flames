Rails.application.routes.draw do
  resources :flames
  root 'flames#index'
  post '/flames/show'
end
