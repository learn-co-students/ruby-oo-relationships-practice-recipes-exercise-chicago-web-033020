class Ingredient
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    #return all allergies ingredients - one per user
    list = Allergy.all.map { |allergy| allergy.ingredient }
    # creates a hash and counts the number of users per ingredient
    num_list = list.inject(Hash.new(0)) {|users_allergies , ingredient | users_allergies[ingredient] += 1; users_allergies }
    # sorts list, putting the highest count last and returns the ingredient instance
    num_list.sort_by { |ingredient, count| count }.last[0]
  end

end