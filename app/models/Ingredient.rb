require_relative "Allergy.rb"

class Ingredient

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        self.all.max do |ingredient_a, ingredient_b|
            ingredient_a.allergies.length <=> ingredient_b.allergies.length
        end
    end

    def allergies
        Allergy.all.select do |allergy|
            allergy.ingredient == self
        end
    end
end