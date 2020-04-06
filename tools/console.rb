require_relative '../config/environment.rb'

# Creating Recipe object instances:
puts "\n"
puts "Creating Recipe object instances:"
chocolate_chip_cookies = Recipe.new("Chocolate Chip Cookies")
pb_and_jelly = Recipe.new("Peanut Butter and Jelly")
sandwich = Recipe.new("Sandwich")
bagels = Recipe.new("Bagels")
chocolate_cake = Recipe.new("Chocolate Cake")

# Creating Ingredient object instances:
puts "\n"
puts "Creating Ingredient object instances:"
milk = Ingredient.new("milk")
chocolate_chips = Ingredient.new("chocolate chips")
flour = Ingredient.new("flour")
bake = Ingredient.new("bake")

# Creating User object instances:
puts "\n"
puts "Creating User object instances:"
isaac = User.new("Isaac")

# Creating Allergy object instances:
puts "\n"
puts "Creating Allergy object instances:"
allergy_to_milk = Allergy.new(isaac, milk)
# this is also the same as:
# isaac.declare_allergy(milk)

# User object (instance method: add_recipe_card):
puts "\n"
puts "User object (instance method: add_recipe_card):"
isaac.add_recipe_card("04-06-2020", 10, chocolate_chip_cookies)
# isaac.add_recipe_card("04-06-2020", 9, pb_and_jelly)
# isaac.add_recipe_card("04-06-2020", 8, sandwich)
# isaac.add_recipe_card("04-06-2020", 3, bagels)
# isaac.add_recipe_card("04-06-2020", 2, chocolate_cake)

# Creating RecipeIngredient object instances:
puts "\n"
puts "Creating RecipeIngredient object instances:"
# chocolate_chips__chocolate_chip_cookies = RecipeIngredient.new(chocolate_chips, chocolate_chip_cookies)

binding.pry
