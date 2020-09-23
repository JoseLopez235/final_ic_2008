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

  def highest_calorie_meal
    highest_calories = 0
    highest_calorie_recipe = nil
    @recipes.each do |recipe|
      if recipe.total_calories > highest_calories
        highest_calories += recipe.total_calories
        highest_calorie_recipe = recipe
      end
    end
    highest_calorie_recipe
  end
end
