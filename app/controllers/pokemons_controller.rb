class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :update, :destroy]

  # GET api/v1/pokemons
  def index
      @pokemons = Pokemon.page(params[:page] ? params[:page].to_i: 1)
  
       render json: {pokemons:@pokemons, meta:pagination_meta(@pokemons)}
  end

  # GET api/v1/pokemons/1
  def show
    render json: @pokemon
  end

  # POST api/v1/pokemons/
  def create
    @pokemon = Pokemon.new(pokemon_params)

    if @pokemon.save
      render json: @pokemon, status: :created, location: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT api/v1/pokemons/1
  def update
    if @pokemon.update(pokemon_params)
      render json: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # DELETE api/v1/pokemons/1
  def destroy
    @pokemon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokemon_params
      params.require(:pokemon).permit(:number, :name, :type1, :type2, :total, :hp, :attack, :defense, :sp_Atk, :sp_Def, :speed, :generation, :legendary)
    end

    #pagination meta 
    def pagination_meta(object){              
      current_page: object.current_page,        
      next_page: object.next_page,        
      prev_page: object.prev_page,        
      total_pages: object.total_pages,        
      total_count: object.total_count }         
    end
end
