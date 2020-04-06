require_relative "RecipeCard.rb"
require_relative "RecipeIngredient.rb"

class Recipe
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.most_popular
        self.all.max do |recipe_a, recipe_b|
            recipe_a.recipe_cards.length <=> recipe_b.recipe_cards.length
        end
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select do |recipe_card|
            recipe_card.recipe == self
        end
    end

    def users
        users_that_have_this_recipe = RecipeCard.all.map do |rc|
            if rc.recipe == self
                users_that_have_this_recipe << rc.user
            end
        end

        p users_that_have_this_recipe
    end

    def add_ingredients(ingredients_array)
        RecipeIngredient.new(ingredients_array, self)
    end

    def ingredients

        recipes_ingredients = RecipeIngredient.all.map do |ri|
            if ri.recipe == self
                ri.ingredient
            end
        end

        p recipes_ingredients
    end

    def allergens
        
    end
end