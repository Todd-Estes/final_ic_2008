class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient_obj, quantity)
    @ingredients_required[ingredient_obj] += quantity
  end

  def ingredients
    # ingredient_hash
    @ingredients_required.map do |ingredient_obj, quantity|
      ingredient_obj
    end
  end

end
