require "test_helper"

class PokemonTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save pokemon without number" do
    pokemon = Pokemon.new
    assert_not pokemon.save 
  end

  test "should not save pokemon without name" do
    pokemon = Pokemon.new
    assert_not pokemon.save
  end
end
