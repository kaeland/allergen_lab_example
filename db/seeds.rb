# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {first_name: "bryan", last_name: "samuels"},
  {first_name: "sarah", last_name: "jakes"},
  {first_name: "sam", last_name: "douglas"}
]

users.each do |user|
  User.create(user)
end

recipes = [
  {title: "pancakes", user_id: User.all.sample.id},
  {title: "pizza", user_id: User.all.sample.id}
]

recipes.each do |recipe|
  Recipe.create(recipe)
end
