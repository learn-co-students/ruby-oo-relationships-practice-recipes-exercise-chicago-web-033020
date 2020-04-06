class Recipe

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def find_recipe_users
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users
    find_recipe_users.map do |user|
      user.user
    end
  end

  def self.most_popular
    list = RecipeCard.all.map { |recipe| recipe.recipe }
    num_list = list.inject(Hash.new(0)) {|users_recipes , title | users_recipes[title] += 1; users_recipes }
    num_list.sort_by { |title, count| count }.last[0]
  end

  def ingredients
    list = RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.recipe == self }
    list.map { |recipe| recipe.ingredient }
  end

end
