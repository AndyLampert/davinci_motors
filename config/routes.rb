Rails.application.routes.draw do
  # root 'cars#index'
  # get '/' => 'cars#index', as: 'root'
  get '/cars' => 'cars#index'
  get 'cars/:id' => 'cars#show'
  get 'cars/new' => 'cars#new', as: 'new_car'
  post '/cars' => 'cars#create'
  get '/cars/:id/edit' => 'cars#edit', as: 'edit_car'
  post '/cars/:id/' => 'cars#update'
end
