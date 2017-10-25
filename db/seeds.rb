# frozen_string_literal: true

# levels table
base_params = { exp_needed: 10, attack: 2, health: 10 }
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
  Level.create(number: 20, exp_needed: nil, attack: 22, health: 200)
else
  last_level.update(number: 20, exp_needed: nil, attack: 22, health: 200)
end

# enemies table
enemies_to_create = [
  { name: 'Goblin', level_id: 1,
    rock_chance: 0.4, paper_chance: 0.2, scissor_chance: 0.4, learning_curve: 0.02 },
  { name: 'Elf', level_id: 1,
    rock_chance: 0.3, paper_chance: 0.1, scissor_chance: 0.6, learning_curve: 0.2 },
  { name: 'Golem', level_id: 1,
    rock_chance: 0.8, paper_chance: 0.1, scissor_chance: 0.1, learning_curve: 0.05 },
  { name: 'Vampire', level_id: 1,
    rock_chance: 0.155, paper_chance: 0.330, scissor_chance: 0.415, learning_curve: 0.4 },
  { name: 'Human', level_id: 1,
    rock_chance: 0.33, paper_chance: 0.34, scissor_chance: 0.33, learning_curve: 0.1 },
  { name: 'Hermit', level_id: 1,
    rock_chance: 0.2, paper_chance: 0.6, scissor_chance: 0.2, learning_curve: 0.1 }
]

enemies_to_create.each do |enemy|
  found_enemy = Enemy.where(name: enemy[:name]).first_or_initialize
  if found_enemy.new_record?
    Enemy.create(enemy)
  else
    found_enemy.update(enemy)
  end
end

# enemy modifiers table
modifiers_to_create = [
  { text: 'Balanced', is_prefix: true,
    rock_chance: 0, paper_chance: 0, scissor_chance: 0,
    learning_curve: 0.2, attack_mult: 1, health_mult: 1 },
  { text: 'The Tactician', is_prefix: false,
    rock_chance: 0, paper_chance: 0, scissor_chance: 0,
    learning_curve: 0.2, attack_mult: 1, health_mult: 1 },
  { text: 'Magical', is_prefix: true,
    rock_chance: 0, paper_chance: 0.25, scissor_chance: 0,
    learning_curve: 0.075, attack_mult: 1.25, health_mult: 0.75 },
  { text: 'The Sorcerer', is_prefix: false,
    rock_chance: 0, paper_chance: 0.25, scissor_chance: 0,
    learning_curve: 0.075, attack_mult: 1.25, health_mult: 0.75 },
  { text: 'Unwavering', is_prefix: true,
    rock_chance: 0.25, paper_chance: 0, scissor_chance: 0,
    learning_curve: 0.025, attack_mult: 0.75, health_mult: 1.25 },
  { text: 'The Guardian', is_prefix: false,
    rock_chance: 0.25, paper_chance: 0, scissor_chance: 0,
    learning_curve: 0.025, attack_mult: 0.75, health_mult: 1.25 },
  { text: 'Agile', is_prefix: true,
    rock_chance: 0, paper_chance: 0, scissor_chance: 0.25,
    learning_curve: 0.05, attack_mult: 1.125, health_mult: 0.875 },
  { text: 'The Duelist', is_prefix: false,
    rock_chance: 0, paper_chance: 0, scissor_chance: 0.25,
    learning_curve: 0.05, attack_mult: 1.125, health_mult: 0.875 }
]

modifiers_to_create.each do |modifier|
  found_modifier = EnemyModifier.where(text: modifier[:text]).first_or_initialize
  if found_modifier.new_record?
    EnemyModifier.create(modifier)
  else
    found_modifier.update(modifier)
  end
end
