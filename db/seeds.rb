# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

placeholder = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n" * 10
user1 = User.create({ name: "Antoine de Saint-Exupéry", email: "antoine@prince.com", password: "password"})
user2 = User.create({ name: "A.A. Milne", email: "aa@milne.com", password: "password"})
Post.create({title: "It is an Elephant", body: placeholder, user_id: user1.id})
Post.create({title: "About B 612", body: placeholder, user_id: user1.id})
Post.create({title: "The Catastrophe of the Boabab", body: placeholder, user_id: user1.id})
Post.create({title: "To Catch a Woozle", body: placeholder, user_id: user2.id})
Post.create({title: "The North Pole Expedition", body: placeholder, user_id: user2.id})
Post.create({title: "What To Do with a Heffalump", body: placeholder, user_id: user2.id})