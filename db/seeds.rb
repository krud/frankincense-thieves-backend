# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all 
Ingredient.destroy_all 
User.destroy_all 

u1 = User.create(username: "Mary", password: "mom")

recipe1 = Recipe.create(name: "Mermaid Hairspray", quantity: 2)
cedarwood = Ingredient.create(name:"cedarwood")
rosemary = Ingredient.create(name:"rosemary")
lavendar = Ingredient.create(name:"lavendar")
