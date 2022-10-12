Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/activity', to: 'activity#create'



  # Defines the root path route ("/")
  # root "articles#index"
end
