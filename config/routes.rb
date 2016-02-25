Rails.application.routes.draw do

  devise_for :users
  root "measurements#index"

  get '/measurements' => 'measurements#index'
  get '/measurements/new' => 'measurements#new'
  post '/measurements' => 'measurements#create'
  get '/measurements/:id' => 'measurements#show'
  get '/measurements/:id/edit' => 'measurements#edit'
  patch '/measurements/:id' => 'measurements#update'
  delete '/measurements/:id' => 'measurements#destroy'


  get '/addresses' => 'addresses#index'
  get '/addresses/new' => 'addresses#new'
  post '/addresses' => 'addresses#create'
  get '/addresses/:id' => 'addresses#show'
  get '/addresses/:id/edit' => 'addresses#edit'
  patch '/addresses/:id' => 'addresses#update'
  delete '/addresses/:id' => 'address#destroy'




end