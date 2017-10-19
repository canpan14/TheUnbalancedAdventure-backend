# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..19).each do |l|
  Level.create(number: l,
               exp_needed: 10 * l,
               attack: 5 + l,
               health: 20 * l)
end
Level.create(number: 20, exp_needed: nil, attack: 25, health: 400)

Enemy.create(name: 'Goblin', level_id: 1,
             rock_chance: 0.34, paper_chance: 0.33, scissor_chance: 0.33)
Enemy.create(name: 'Raging Goblin', level_id: 2,
             rock_chance: 0.3, paper_chance: 0.1, scissor_chance: 0.6)
Enemy.create(name: 'Stone Guardian', level_id: 3,
             rock_chance: 0.8, paper_chance: 0.1, scissor_chance: 0.1)
