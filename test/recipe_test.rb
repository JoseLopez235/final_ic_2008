require "minitest/autorun"
require "minitest/pride"
require "./lib/recipe"
require "./lib/ingredient"

class RecipeTest < Minitest::Test
  def test_should_exist
    recipe1 = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, recipe1
  end

  def test_should_have_its_attributes
    recipe1 = Recipe.new("Mac and Cheese")
    assert_equal "Mac and Cheese", recipe1.name
    assert_equal ({}), recipe1.ingredients_required
  end
end
