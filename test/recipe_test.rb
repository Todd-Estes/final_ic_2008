require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

class RecipeTest < Minitest::Test
  def test_it_exists_with_attributes
     recipe1 = Recipe.new("Mac and Cheese")
     assert_instance_of Recipe, recipe1
     assert_equal "Mac and Cheese", recipe1.name
     expected = {}
     assert_equal expected, recipe1.ingredients_required
   end

  def it_can_add_required_ingedients
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    recipe1.name
   recipe1.ingredients_required
   recipe1.add_ingredient(ingredient1, 2)
   recipe1.add_ingredient(ingredient1, 4)
   recipe1.add_ingredient(ingredient2, 8)
   recipe1.ingredients_required
     # => {#<Ingredient:0x00007fd7811553c8...> => 6, #<Ingredient:0x00007fd78110b0e8...> => 8}
   # recipe1.ingredients
   # # => [#<Ingredient:0x007fe8438c7a70...>, #<Ingredient:0x007fe843857f40...>]
 end
end
