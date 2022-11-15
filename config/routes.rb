Rails.application.routes.draw do
  # devise_for :users
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :home, only: [:index]
  # , controllers:{
  #   registrations: "registrations"
  # }

  # get 'youtube_api/new'
  # get 'youtube_api/:id', to: 'youtube_api#show'

  # get 'youtube_api/search', to

  resources :youtube_api do
    collection do
      get :results
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
