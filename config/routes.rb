Rails.application.routes.draw do
  # Define the root path route ("/")
  resources :lists do
    resources :bookmarks, only: [:create, :destroy,:new]
  end
   root to: 'lists#index'

  # Health check route (keeps it for monitoring purposes)
  # get "up" => "rails/health#show", as: :rails_health_check

  # You can also add other routes as needed...
end
