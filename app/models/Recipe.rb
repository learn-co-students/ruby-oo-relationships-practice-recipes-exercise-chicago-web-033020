class Recipe
    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def set_name(new_name)
        self.name = new_name
    end

    def self.most_popular
        # Most carded recipe wins
        # Each recipe has many recipe cards
        # RecipeCard instances belong to one recipe each
        # We can count how many recipe cards each recipe has
        # And sort recipes based on that
        self.all.max do |recipe_a, recipe_b|
            recipe_a.recipe_cards.length <=> recipe_b.recipe_cards.length
        end
    end

    def recipe_cards
        RecipeCard.all.select do |recipe_card|
            recipe_card.recipe == self
        end
    end

    def users
        recipe_cards.map do |card|
            card.user
        end
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end

    def recipe_ingredients
        RecipeIngredient.all.select do |r_i|
        r_i.recipe == self
        end
    end

    def ingredients
        # Joined through a many to many
        # I want the joins first so I can go through them
        self.recipe_ingredients.collect do |r_i|
            r_i.ingredient
        end
    end

    def numbered_ingredients
        strings = ingredients.each_with_index.map do |ingredient, index|
            "#{index + 1}. #{ingredient.title}"
        end
        strings.join("\n")
    end

    def to_s

        <<~WONKA
        Helloooooo theeeere!
        I'm kidding.  Not a ghost.  Just a RECIPE called #{name}!
        My ingredients are:

        #{numbered_ingredients}
        WONKA
    end
end