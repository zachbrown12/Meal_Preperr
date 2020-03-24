# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Recipe.create(name:"Mac and Cheese", cuisine:"American", meal_type: "Lunch", health_rating: 1, instructions:"1. Boil Water. 2. Put pasta in. 3. Take out and put cheese on the pasta.") 

i1 = Ingredient.create(name:"Macaroni", food_group:"Grains", calories:221, serving_unit:"Cup") #per one cup
i2 = Ingredient.create(name:"Cheddar Cheese", food_group:"Dairy", calories:445, serving_unit:"Cup") # per one cup

rd1 = RecipeDetail.create(ingredient_id: i1.id, recipe_id: r1.id, servings: 1, serving_unit:"Cup")
rd2 = RecipeDetail.create(ingredient_id: i2.id, recipe_id: r1.id, servings: 2, serving_unit:"Cup")

u1 = User.create(name:"Zach", username: "zach.brown", password:1234)

am1 = AvailableMeal.create(user_id: u1.id, recipe_id: r1.id, user_rating: 3)

tm1 = TrackedMeal.create(available_meal_id: am1.id, date: 1.hour.ago)

