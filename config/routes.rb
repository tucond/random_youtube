Rails.application.routes.draw do
  get 'youtube_api/new'
  get 'youtube_api/:id', to: 'youtube_api#show'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
