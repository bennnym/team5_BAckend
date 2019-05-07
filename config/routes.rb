Rails.application.routes.draw do
  get 'session/new'
  resources :reservations
  resources :flights
  resources :airplanes
  resources :users, :only => [:new, :create]


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
