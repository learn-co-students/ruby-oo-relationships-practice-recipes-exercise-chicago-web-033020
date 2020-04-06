## OO Recipes Mini Project

In this project, we will be practicing object relationships in Ruby, with a particular emphasis on the has-many-through relationship.  We will be building out a domain model in which a User has a collection of RecipeCards. Each RecipeCard will store information about a Recipe a User would like to save, creating the relationship of a User having many Recipes through RecipeCards. A single Recipe can also belong to many Users.  A Recipe also has many Ingredients, while a single Ingredient can be found in many Recipes.  There are Ingredients that some Users may be allergic to.  Read through the deliverables below to begin building out the following six classes and to figure out additional information about their relationships.  (Note - a `#` symbol represents an instance method, while a `.` represents a class method.)  You may not be able to build out all methods until you have set up relationships between the classes, so it is normal to jump around a bit in the building process. It will help to draw this out on a whiteboard before beginning to code. If you are confused about how the below models relate to each other, definitely do this first.

## Testing

We've provided you with a console that you can use to test your code. To enter a console session, run ruby tools/console.rb. You'll be able to test out the methods that you write here.

## Deliverables

### `Recipe`
Build the following methods on the Recipe class

Y `Recipe.all`
should return all of the recipe instances
Y `Recipe.most_popular`
should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
Y `Recipe#users`
should return the user instances who have recipe cards with this recipe
Y `Recipe#ingredients`
should return all of the ingredients in this recipe
- `Recipe#allergens`
should return all of the `Ingredient`s in this recipe that are allergens for `User`s in our system.
- `Recipe#add_ingredients`
should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

### `Allergy`
An Allergy is a join between a user and an ingredient.  This is a has-many-through relationship.  What methods should an instance of this model respond to?

Y `Allergy.all`
should return all of the Allergy instances

### `User`
Build the following methods on the User class

Y `User.all`
should return all of the user instances
Y `User#recipes`
should return all of the recipes this user has recipe cards for
Y `User#add_recipe_card`
should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
- `User#declare_allergy`
should accept an`Ingredient` instance as an argument, and create a new `Allergy` instance for this `User` and the given `Ingredient`
- `User#allergens`
should return all of the ingredients this user is allergic to
Y `User#top_three_recipes`
should return the top three highest rated recipes for this user.
Y `User#most_recent_recipe`
should return the recipe most recently added to the user's cookbook.

### `RecipeCard`
A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
Build the following methods on the RecipeCard class:  

Y `RecipeCard.all`
should return all of the RecipeCard instances
Y `RecipeCard#date`
should return the date of the entry
Y `RecipeCard#rating`
should return the rating (an integer) a user has given their entry
Y `RecipeCard#user`
should return the user to which the entry belongs
Y `RecipeCard#recipe`
should return the recipe to which the entry belongs

### `Ingredient`
Build the following methods on the Ingredient class

Y `Ingredient.all`
should return all of the ingredient instances
Y `Ingredient.most_common_allergen`
should return the ingredient instance that the highest number of users are allergic to


### `RecipeIngredient`
RecipeIngredient is the join between an ingredient and a recipe.  This is a has-many-through relationship
Build the following methods on the RecipeIngredient class

Y `RecipeIngredient.all`
should return all of the RecipeIngredient instances
Y `RecipeIngredient#ingredient`
should return the ingredient instance
Y `RecipeIngredient#recipe`
should return the recipe instance

### `**Bonus**`
- `User#safe_recipes`
should return all recipes that do not contain ingredients the user is allergic to
- What other methods might be useful to have?
