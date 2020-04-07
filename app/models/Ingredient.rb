class Ingredient
    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def to_s
        "I'm #{title}! I'm delicious!"
    end
end