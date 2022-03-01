Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "user#index"
  post "/create_user", to: "user#create_user"
  post "/remove_user", to: "user#remove_user"
end
