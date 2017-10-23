Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers do
      resources :pokemons
  end
  patch 'pokemons/:id', to:"pokemons#capture", as: :capture

  put 'pokemons/:id', to:"pokemons#damage", as: :damage

  get 'pokemons/new', to: "pokemons#new"
  post 'pokemons/new', to: "pokemons#create"

end

