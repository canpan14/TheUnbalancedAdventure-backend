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

base_params = { exp_needed: 10, attack: 5, health: 20 }
(1..19).each do |l|
  level = Level.where(number: l).first_or_initialize
  if level.new_record?
    Level.create(number: l,
                 exp_needed: base_params[:exp_needed] * l,
                 attack: base_params[:attack] + l,
                 health: base_params[:health] * l)
  else
    level.update(number: l,
                 exp_needed: base_params[:exp_needed] * l,
                 attack: base_params[:attack] + l,
                 health: base_params[:health] * l)
  end
end
last_level = Level.where(number: 20).first_or_initialize
if last_level.new_record?
  Level.create(number: 20, exp_needed: nil, attack: 25, health: 400)
else
  last_level.update(number: 20, exp_needed: nil, attack: 25, health: 400)
end

enemies_to_create = [
  { name: 'Goblin', level_id: 1,
    rock_chance: 0.34, paper_chance: 0.33, scissor_chance: 0.33 },
  { name: 'Raging Goblin', level_id: 2,
    rock_chance: 0.3, paper_chance: 0.1, scissor_chance: 0.6 },
  { name: 'Stone Guardian', level_id: 3,
    rock_chance: 0.8, paper_chance: 0.1, scissor_chance: 0.1 }
]

enemies_to_create.each do |enemy|
  found_enemy = Enemy.where(name: enemy[:name]).first_or_initialize
  if found_enemy.new_record?
    Enemy.create(enemy)
  else
    found_enemy.update(enemy)
  end
end
