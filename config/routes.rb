Rails.application.routes.draw do
  root to: 'lists#index' # Sets the homepage to the lists index

  resources :lists do
    resources :bookmarks, only: [:create, :destroy] # Nested because bookmarks belong to lists
  end

  resources :movies, only: [:index, :show] # Allows viewing movies
end
