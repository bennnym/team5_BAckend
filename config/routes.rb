Rails.application.routes.draw do
  get 'session/new'
  root :to => 'session#new'
  resources :reservations
  resources :flights
  resources :airplanes
  resources :users, :only => [:new, :create]

  get '/user' => 'users#show'


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
