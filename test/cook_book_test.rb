require "minitest/autorun"
require "minitest/pride"
require "./lib/cook_book"
require "./lib/cook_book"
require "./lib/recipe"
class CookBookTest < Minitest::Test
  def test_should_exist
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

  def test_should_be_ablie_to_add_recipes
    cookbook = CookBook.new
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")
    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)
    assert_equal [recipe1, recipe2], cookbook.recipes
  end
end
