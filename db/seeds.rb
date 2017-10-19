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

Level.create(number: 1, exp_needed: 0, attack: 6, health: 20)
(2..20).each do |l|
  Level.create(number: l,
               exp_needed: 10 * l,
               attack: 5 + l,
               health: 20 * l)
end

Enemy.create(name: 'Goblin', level_id: 1, attack_chance: 0.5, dodge_chance: 0.5,
             predict_dodge_chance: 0.0)
Enemy.create(name: 'Raging Goblin', level_id: 2, attack_chance: 0.9,
             dodge_chance: 0.1, predict_dodge_chance: 0.0)
Enemy.create(name: 'Stone Guardian', level_id: 3, attack_chance: 0.2,
             dodge_chance: 0.4, predict_dodge_chance: 0.4)
