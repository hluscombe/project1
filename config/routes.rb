# == Route Map
#
#       Prefix Verb   URI Pattern                Controller#Action
#         root GET    /                          pages#home
#        users GET    /users(.:format)           users#index
#              POST   /users(.:format)           users#create
#     new_user GET    /users/new(.:format)       users#new
#    designers POST   /designers(.:format)       designers#create
# new_designer GET    /designers/new(.:format)   designers#new
#       synths GET    /synths(.:format)          synths#index
#              POST   /synths(.:format)          synths#create
#    new_synth GET    /synths/new(.:format)      synths#new
#   edit_synth GET    /synths/:id/edit(.:format) synths#edit
#        synth GET    /synths/:id(.:format)      synths#show
#              PATCH  /synths/:id(.:format)      synths#update
#              PUT    /synths/:id(.:format)      synths#update
#              DELETE /synths/:id(.:format)      synths#destroy
#        bands GET    /bands(.:format)           bands#index
#              POST   /bands(.:format)           bands#create
#     new_band GET    /bands/new(.:format)       bands#new
#    edit_band GET    /bands/:id/edit(.:format)  bands#edit
#         band GET    /bands/:id(.:format)       bands#show
#              PATCH  /bands/:id(.:format)       bands#update
#              PUT    /bands/:id(.:format)       bands#update
#              DELETE /bands/:id(.:format)       bands#destroy
#        login GET    /login(.:format)           session#new
#              POST   /login(.:format)           session#create
#              DELETE /login(.:format)           session#destroy

Rails.application.routes.draw do
  # get 'bands/index'
  # get 'bands/show'
  # get 'bands/edit'
  # get 'bands/new'
  # get 'synths/index'
  # get 'synths/show'
  # get 'synths/edit'
  # get 'synths/new'
  # get 'users/index'
  # get 'users/new'
  # get 'designers/index'
  # get 'designers/show'
  # get 'designers/edit'
  # get 'designers/new'
  root :to => 'pages#home' # Replace this with whatever you want your root_path to be.
  resources :users, :only => [:new, :create, :index]
  resources :designers
  resources :synths
  resources :bands

  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'
end
