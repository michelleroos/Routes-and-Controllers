Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  # get 'users', to: 'users#index', as: 'users'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # post 'users', to: 'users#create'
  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users/:id/edit', to: 'users#edit'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'

  resources :users do 
    resources :artworks, only: :index
  end

  resources :artworks, except: :index
  
  resources :artwork_shares, only: [:create, :destroy]
end
