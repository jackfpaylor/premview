Rails.application.routes.draw do
  resources :normanpds
  root 'home#index'
  get 'home/about'
  get 'home/pricing'
  get 'home/features'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :normanpds do
    collection do
      get 'list'
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
