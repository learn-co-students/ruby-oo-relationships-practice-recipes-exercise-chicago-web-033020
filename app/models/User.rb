require_relative "RecipeCard.rb"
require_relative "Recipe.rb"

class User 
    attr_reader :name, :all_recipe_cards, :all_allergies
    @@all = []

    def initialize(name)
        @name = name
        @all_recipe_cards = []
        @all_allergies = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def recipes
        recipes_from_rc = []

        @all_recipe_cards.each do |recipe_card|
            recipes_from_rc << recipe_card.recipe
        end

        p recipes_from_rc
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        allergens_array = []

        @all_allergies.each do |allergy|
            allergens_array << allergy.ingredient
        end

        allergens_array
    end

    def top_three_recipes
        
        sorted_rc = self.all_recipe_cards.sort_by do |rc|
            rc.rating
        end

        p sorted_rc.last(3)
    end

    def most_recent_recipe
        self.all_recipe_cards.last.recipe
    end
end