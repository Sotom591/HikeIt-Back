Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do

      resources :users, only: [:index, :create]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'


      resources :packing_lists, only: [:index]
      resources :packing_items, only: [:index]
      resources :hiking_lists, only: [:index]

  #   end
  # end
end
