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
