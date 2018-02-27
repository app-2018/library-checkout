# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
Author.destroy_all
Role.destroy_all
User.destroy_all

@author = Author.create(last_name: "Wallace", first_name: "David Foster")

@book = Book.create(title: "Infinite Jest", authors: [@author])
@book = Book.create(title: "The Pale King", authors: [@author])
@book = Book.create(title: "Consider the Lobster", authors: [@author])
