require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'

class CookBookTest < Minitest::Test
  def test_it_exists_with_attributes_and_add_recipes
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
    assert_equal [], cookbook.recipes

    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)
    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)

    assert_equal [recipe1, recipe2], cookbook.recipes
  end

  def test_it_can_arrange_ingredients_and_find_highest_calorie_meal
    cookbook = CookBook.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
     ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})

     ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
    recipe1 = Recipe.new("Mac and Cheese")
     recipe1.add_ingredient(ingredient1, 2)
     recipe1.add_ingredient(ingredient2, 8)
     recipe2 = Recipe.new("Cheese Burger")
     recipe2.add_ingredient(ingredient1, 2)
     recipe2.add_ingredient(ingredient3, 4)
     recipe2.add_ingredient(ingredient4, 1)

     cookbook.add_recipe(recipe1)

     cookbook.add_recipe(recipe2)

    assert_equal ["Cheese", "Macaroni", "Ground Beef", "Bun"],  cookbook.ingredients
    assert_equal recipe2, cookbook.highest_calorie_meal
  end

end
