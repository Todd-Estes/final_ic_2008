require './lib/recipe'
class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient_obj)
    @stock[ingredient_obj]
  end

  def restock(ingredient_obj, quantity)
    @stock[ingredient_obj] += quantity
  end

  def enough_ingredients_for?(recipe_obj)
    @stock.each do |ingredient_obj, quantity|
      recipe_obj.ingredients_required.each do |rec_ing, rec_quan|
        if ingredient_obj == rec_ing && quantity >= rec_quan
          return true
        else
          false
        end
      end
    end
  end

end
