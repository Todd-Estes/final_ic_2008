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

  def test_it_can_add_required_ingedients_and_check_ingredients
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)
    expected = {
              ingredient1 => 6,
              ingredient2 => 8
              }
    assert_equal expected, recipe1.ingredients_required
    assert_equal [ingredient1, ingredient2], recipe1.ingredients
 end

 def test_total_calories
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
     recipe1.add_ingredient(ingredient1, 2)
     recipe1.add_ingredient(ingredient2, 8)
     ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})

     ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
    # => #<Ingredient:0x00007faae694bb80...>

     recipe2 = Recipe.new("Cheese Burger")
    # => #<Recipe:0x00007faae692a110...>

     recipe2.add_ingredient(ingredient1, 2)

     recipe2.add_ingredient(ingredient3, 4)

     recipe2.add_ingredient(ingredient4, 1)

     recipe1.total_calories
    # => 440

     recipe2.total_calories
  end
    # => 675
end
