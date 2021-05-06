Rails.application.routes.draw do
 
   resources :pokemons, only: [:index, :create, :show, :update , :destroy] , path: '/api/v1/pokemons'

    end
  
