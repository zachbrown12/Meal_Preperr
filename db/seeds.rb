# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipeDetail.destroy_all

r1 = Recipe.create(name:"Mac and Cheese", cuisine:"American", meal_type: "Lunch", health_rating: 1, instructions:"1. Boil Water. 2. Put pasta in. 3. Take out and put cheese on the pasta.") 
r2 = Recipe.create(name:"Cereal", cuisine:"American", meal_type: "Breakfast", health_rating: 3, instructions:"1. Combine Milk and Cereal") 
r3 = Recipe.create(name:"Tacos", cuisine:"Mexican", meal_type: "Dinner", health_rating: 3, instructions:"1. Get a taco. 2. Put some taco meat in it") 
r4 = Recipe.create(name:"Pancakes", cuisine:"American", meal_type: "Breakfast", health_rating: 2, instructions:"1. Put pancakes on the pan.") 
r5 = Recipe.create(name:"Turkey Sandwich", cuisine:"American", meal_type: "Lunch", health_rating: 3, instructions:"1. Get a piece of bread. 2. Put turkey in the bread.") 
r6 = Recipe.create(name:"Salad", cuisine:"American", meal_type: "Dinner", health_rating: 5, instructions:"1. Get lettuce leaves and tomatoes. 2. Toss them together.") 


i1 = Ingredient.create(name:"Macaroni", food_group:"Grains", calories:221, serving_unit:"Cups") #per one cup
i2 = Ingredient.create(name:"Cheddar Cheese", food_group:"Dairy", calories:445, serving_unit:"Cups") # per one cup
i3 = Ingredient.create(name:"Cheerios", food_group:"Grains", calories:100, serving_unit:"Cups") # per one cup
i4 = Ingredient.create(name:"2% Milk", food_group:"Dairy", calories:122, serving_unit:"Cups") # per one cup
i5 = Ingredient.create(name:"Taco Shell", food_group:"Grains", calories:50, serving_unit:"Shells") # per one cup
i6 = Ingredient.create(name:"Taco Meat", food_group:"Meats", calories:418, serving_unit:"Cups") # per one cup
i7 = Ingredient.create(name:"Pancakes", food_group:"Grains", calories:86, serving_unit:"Pancakes") # per one cup
i8 = Ingredient.create(name:"White Bread", food_group:"Grains", calories:265, serving_unit:"Slices") # per one cup
i9 = Ingredient.create(name:"Turkey", food_group:"Meats", calories:21, serving_unit:"Slices") # per one cup
i10 = Ingredient.create(name:"Lettuce", food_group:"Vegetables", calories:17, serving_unit:"Cups") # per one cup
i11 = Ingredient.create(name:"Tomato", food_group:"Vengetables", calories:11, serving_unit:"Tomatoes") # per one cup


rd1 = RecipeDetail.create(ingredient_id: i1.id, recipe_id: r1.id, servings: 2, serving_unit:"Cups")
rd2 = RecipeDetail.create(ingredient_id: i2.id, recipe_id: r1.id, servings: 1, serving_unit:"Cups")
rd3 = RecipeDetail.create(ingredient_id: i3.id, recipe_id: r2.id, servings: 2, serving_unit:"Cups")
rd4 = RecipeDetail.create(ingredient_id: i4.id, recipe_id: r2.id, servings: 0.25, serving_unit:"Cups")
rd5 = RecipeDetail.create(ingredient_id: i5.id, recipe_id: r3.id, servings: 3, serving_unit:"Shells")
rd6 = RecipeDetail.create(ingredient_id: i6.id, recipe_id: r3.id, servings: 0.5, serving_unit:"Cups")
rd7 = RecipeDetail.create(ingredient_id: i7.id, recipe_id: r4.id, servings: 3, serving_unit:"")
rd8 = RecipeDetail.create(ingredient_id: i8.id, recipe_id: r5.id, servings: 1, serving_unit:"Slices")
rd9 = RecipeDetail.create(ingredient_id: i9.id, recipe_id: r5.id, servings: 5, serving_unit:"Slices")
rd10 = RecipeDetail.create(ingredient_id: i10.id, recipe_id: r6.id, servings: 2, serving_unit:"Cups")
rd11 = RecipeDetail.create(ingredient_id: i11.id, recipe_id: r6.id, servings: 2, serving_unit:"")


u1 = User.create(name:"Zach", username: "zach.brown", password_digest:12345)
u2 = User.create(name:"Baker", username: "baker123", password_digest:12345)
u3 = User.create(name:"Joe", username: "Joe", password_digest:12345)


#am1 = AvailableMeal.create(user_id: u1.id, recipe_id: r1.id, user_rating: 3)
#am2 = AvailableMeal.create(user_id: u1.id, recipe_id: r2.id, user_rating: 4)
#am3 = AvailableMeal.create(user_id: u2.id, recipe_id: r1.id, user_rating: 2)
#am4 = AvailableMeal.create(user_id: u2.id, recipe_id: r2.id, user_rating: 2)
#am5 = AvailableMeal.create(user_id: u3.id, recipe_id: r1.id, user_rating: 5)
#
#
#tm1 = TrackedMeal.create(available_meal_id: am1.id, start_time: 1.day.ago)
#tm2 = TrackedMeal.create(available_meal_id: am2.id, start_time: 1.hour.ago)
#tm3 = TrackedMeal.create(available_meal_id: am3.id, start_time: 1.hour.ago)
