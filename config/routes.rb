Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  post '/hero_powers', to: 'hero_powers#create'
  # Defines the root path route ("/")
  # root "articles#index"
end
