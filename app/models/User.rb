class User
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, self, date, rating)
    end
end