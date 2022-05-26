Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/destroy'
  # get 'lists/show'
  # get 'lists/index'
  # get 'lists/new'
  # get 'lists/create'
  # get 'list/show'
  # get 'list/index'
  # get 'list/new'
  # get 'list/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[show index new create] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: %i[destroy]
  # resources :movies
end
