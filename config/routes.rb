Rails.application.routes.draw do
 
   resources :pokemons, only: [:index, :show, :update]   path: '/api/v1/pokemons'

    end
  
