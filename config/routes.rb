Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users
  resources :designers
  resources :synths
  resources :bands

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
