class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    all_ingredients = []
    @recipes.each do |recipe|
      recipe.ingredients_required.each do |ingredient, amount|
        all_ingredients << ingredient.name
      end
    end
    all_ingredients.uniq
  end
end
