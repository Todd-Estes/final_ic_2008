require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test
  def test_it_exists_with_attributes
     ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
     ingredient1.name
     ingredient1.unit
     ingredient1.calories
     ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
     assert_instance_of Ingredient, ingredient
     assert_equal "Cheese", ingredient.name
     assert_equal "oz", ingredient.unit
     assert_equal 200, ingredient.calories
   end
end
