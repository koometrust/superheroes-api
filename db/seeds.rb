# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
Hero.create(name: "Jude the zionist", super_name: "Mr. Zion")
Hero.create(name: "King Kang", super_name: "King")
Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

Power.create(name: "Super Strength", description: "Gives the wielder super-human strengths")
Power.create(name: "Flight", description"Step 7: Seed data (optional)" continued:

```ruby
Power.create(name: "Flight", description: "Gives the wielder the ability to fly through the skies at supersonic speed")

HeroPower.create(hero_id: 1, power_id: 1, strength: "Strong")
HeroPower.create(hero_id: 1, power_id: 2, strength: "Average")
HeroPower.create(hero_id: 2, power_id: 2, strength: "Weak")
