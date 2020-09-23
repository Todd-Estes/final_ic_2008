require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test
  def test_it_exists_with_attributes
     pantry = Pantry.new
     expected = {}
     assert_instance_of Pantry, pantry.new
     assert_equal expected, pantry.stock

     # assert_equal 0, pantry.stock_check(ingredient1)
     # pantry.restock(ingredient1, 5)
     # pantry.restock(ingredient1, 10)
     # assert_equal 15, pantry.stock_check(ingredient1)
     # pantry.restock(ingredient2, 7)
     # assert_equal 7, pantry.stock_check(ingredient2)
   end
 end 
