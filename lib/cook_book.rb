class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe_obj)
    @recipes <<  recipe_obj
  end

  def ingredients
    ingredient_names = []
    @recipes.each do |recipe|
      recipe.ingredients.each do |ingredient|
        ingredient_names << ingredient.name
      end
    end
    ingredient_names.uniq
  end
end
