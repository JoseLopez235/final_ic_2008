require "minitest/autorun"
require "minitest/pride"
require "./lib/pantry"
require "./lib/ingredient"

class PantryTest < Minitest::Test
  def test_should_exist
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_should_have_empty_hash
    pantry = Pantry.new
    assert_equal ({}), pantry.stock
  end
end
