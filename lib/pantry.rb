class Pantry
  attr_reader :stock
  def initialize
    @stock = {}
  end

  def restock(ingredient, amount)
    if @stock[ingredient].nil?
      @stock[ingredient] = amount
    else
      @stock[ingredient] += amount
    end
  end

  def stock_check(ingredient)
    if @stock[ingredient].nil?
      0
    else
      @stock[ingredient]
    end
  end

  def enough_ingredients_for?(recipe)
    ready_to_cook = false
    @stock.each do |ingredient, amount|
      break if recipe.ingredients_required.length != @stock.length
      if amount >= recipe.ingredients_required[ingredient]
        ready_to_cook = true
      else
        ready_to_cook = false
      end
      break if ready_to_cook == false
    end
    ready_to_cook
  end
end
