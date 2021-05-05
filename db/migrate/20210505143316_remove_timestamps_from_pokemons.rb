class RemoveTimestampsFromPokemons < ActiveRecord::Migration[6.1]
  def change
    remove_column :pokemons, :created_at, :string
    remove_column :pokemons, :updated_at, :string
  end
end
