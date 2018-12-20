Rails.application.routes.draw do

  resources :users, only: [:index]

  resources :packing_lists, only: [:index]
  resources :packing_items, only: [:index]
  resources :hiking_lists, only: [:index]


end
