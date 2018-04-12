# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Monster.create(name: "", description: "", level: , attack: , defence: , health: , xp_given: , gold_given: )

Monster.create(name: "Dummy Bot", description: "Test Unit", level: 1, attack: 1, defence: 1, health: 10, xp_given: 500, gold_given: 500)
Monster.create(name: "Rat", description: "A little rat", level: 2, attack: 14, defence: 10, health: 40, xp_given: 5, gold_given:3)
Monster.create(name: "Wolf", description: "A fierceish wolf", level: 3, attack: 16, defence: 12, health: 65, xp_given: 7, gold_given: 4)
Monster.create(name: "Goblin", description: "It's ghoulish green", level: 4, attack: 18, defence: 15, health: 100, xp_given: 8, gold_given: 8)
Monster.create(name: "Armed Goblin", description: "Ahh he has an arm!", level: 5, attack: 25, defence: 25, health: 150, xp_given: 15, gold_given: 20)
Monster.create(name: "Sleeping Bandit", description: "Quick kill the innocent man.", level: 6, attack: 30, defence: 30, health: 180, xp_given: 20, gold_given: 20)
Monster.create(name: "Bear", description: "So fluffy", level: 7, attack: 50, defence: 20, health: 250, xp_given: 30, gold_given: 50)
