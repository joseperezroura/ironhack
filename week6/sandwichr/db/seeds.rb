# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sandwich1=Sandwich.create!(name: "Grilled Cheese", bread_type: "White")
sandwich2=Sandwich.create!(name: "Spicy Chicken", bread_type: "Roll")
sandwich3=Sandwich.create!(name: "Salmon Sub", bread_type: "Wheat Bread")

ingredient1=Ingredient.create!(name: "Mayo", calories: 20)
ingredient2=Ingredient.create!(name: "Onions", calories: 10)
ingredient3=Ingredient.create!(name: "Pickles", calories: 5)

SandwichIngredient.create!(sandwich_id: sandwich1.id, ingredient_id: ingredient1.id)
SandwichIngredient.create!(sandwich_id: sandwich1.id, ingredient_id: ingredient2.id)
SandwichIngredient.create!(sandwich_id: sandwich1.id, ingredient_id: ingredient3.id)
SandwichIngredient.create!(sandwich_id: sandwich2.id, ingredient_id: ingredient1.id)
SandwichIngredient.create!(sandwich_id: sandwich2.id, ingredient_id: ingredient2.id)
SandwichIngredient.create!(sandwich_id: sandwich2.id, ingredient_id: ingredient3.id)
SandwichIngredient.create!(sandwich_id: sandwich3.id, ingredient_id: ingredient1.id)
SandwichIngredient.create!(sandwich_id: sandwich3.id, ingredient_id: ingredient2.id)
SandwichIngredient.create!(sandwich_id: sandwich3.id, ingredient_id: ingredient3.id)