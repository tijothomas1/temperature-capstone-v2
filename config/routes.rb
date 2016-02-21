Rails.application.routes.draw do

  devise_for :users
  root to: "measurements#index"

  get '/measurements' => 'measurements#index'
  get '/measurements/new' => 'measurements#new'
  post '/measurements' => 'measurements#create'
  get '/measurements/:id' => 'measurements#show'
  get '/measurements/:id/edit' => 'measurements#edit'
  patch '/measurements/:id' => 'measurements#update'
  delete '/measurements/:id' => 'measurements#destroy'

end