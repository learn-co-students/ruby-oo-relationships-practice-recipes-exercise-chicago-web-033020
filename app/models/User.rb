class User

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def find_user_recipes
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def recipes
    find_user_recipes.map do |recipe|
      recipe.recipe
    end
  end

  def add_recipe_card(recipe, date=Time.now.strftime("%m/%d/%Y"), rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def top_three_recipes
    list_all = self.find_user_recipes.sort_by { |recipe| recipe.rating }.reverse
    recipe_list = list_all.map { |recipe| recipe.recipe }
    recipe_list[0..2]
  end

  def most_recent_recipe
    self.recipes.last
  end

end

