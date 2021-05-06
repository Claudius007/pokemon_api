ActiveRecord::Schema.define(version: 2021_05_05_143316) do

  create_table "pokemons", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.string "type1"
    t.string "type2"
    t.integer "total"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "sp_Atk"
    t.integer "sp_Def"
    t.integer "speed"
    t.integer "generation"
    t.string "legendary"
  end

end
