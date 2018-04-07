# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Monster.create(name: "Rat", description: "A little rat", level: 2, attack: 5, defence: 5, health: 40)
Monster.create(name: "Wolf", description: "A fierceish wolf", level: 3, attack: 7, defence: 10, health: 65)
Monster.create(name: "Goblin", description: "It's ghoulish green", level: 4, attack: 9, defence: 10, health: 100)
