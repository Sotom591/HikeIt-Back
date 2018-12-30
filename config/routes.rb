Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do

      resources :users, only: [:index, :create, :show]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'


      resources :packing_lists, only: [:index, :show]
      resources :packing_items, only: [:index, :show]
      resources :hiking_lists, only: [:index, :show]

  #   end
  # end
end
