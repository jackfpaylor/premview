Rails.application.routes.draw do
  root 'home#index'
  get 'home/about'
  get 'home/pricing'
  get 'home/features'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
