require_relative '../config/environment.rb'

def reload
    load 'config/environment.rb'
  end

cake = Recipe.new ("Birthday Cake")
donut = Recipe.new ("Pink Donut")
burger = Recipe.new ("Cheeseburger")
noodles = Recipe.new ("Spaggheti")

al = User.new("Al")
pat = User.new("Pat")
sandy = User.new("Sandy")
dana = User.new("Dana")

batter = Ingredient.new("batter")
chocolate = Ingredient.new("chocolate")
sprinkles = Ingredient.new("sprinkles")
sugar = Ingredient.new("sugar")

donut.add_ingredients([batter, chocolate, sprinkles, sugar])
p RecipeIngredient.all
puts donut.ingredients

pat.add_recipe_card(cake, "03/31/20", "5 turnips!")
pat.add_recipe_card(donut, "03/31/20", "5 turnips!")
pat.add_recipe_card(burger, "03/31/20", "5 turnips!")
sandy.add_recipe_card(donut, "03/31/20", "5 turnips!")
dana.add_recipe_card(donut, "03/31/20", "5 turnips!")
dana.add_recipe_card(noodles, "03/31/20", "5 turnips!")
al.add_recipe_card(cake, "04/01/20", "It's delicious!")

binding.pry
