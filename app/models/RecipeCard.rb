class RecipeCard

  attr_reader :user, :recipe, :date, :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(user, recipe, date=Time.now.strftime("%m/%d/%Y"), rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

end