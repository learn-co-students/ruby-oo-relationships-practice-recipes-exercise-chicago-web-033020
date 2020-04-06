require_relative '../config/environment.rb'

sam = User.new("Sam")
derek = User.new("Derek")

pot_roast = Recipe.new("Pot Roast")
cookies = Recipe.new("Cookies")
stirfry = Recipe.new("Stirfry")
chilli = Recipe.new("Chilli")

beef = Ingredient.new("Beef")
fish = Ingredient.new("Fish")
chicken = Ingredient.new("Chicken")
chocolate = Ingredient.new("Chocolate")
flour = Ingredient.new("Flour")
water = Ingredient.new("Water")

card_one = RecipeCard.new(sam, pot_roast, 8)
card_three = RecipeCard.new(sam, stirfry, 3)
card_four = RecipeCard.new(sam, cookies, 10)
card_five = RecipeCard.new(sam, chilli, 6)
card_two = RecipeCard.new(derek, cookies, 9)

allergy_one = Allergy.new(derek, fish)
allergy_two = Allergy.new(derek, chicken)
allergy_three = Allergy.new(sam, fish)

one = RecipeIngredient.new(pot_roast, beef)
two = RecipeIngredient.new(pot_roast, water)
three = RecipeIngredient.new(cookies, chocolate)



binding.pry
