# frozen_string_literal: true

class StateSerializer < ActiveModel::Serializer
  attributes :id, :a_health, :a_attack, :in_fight, :e_name, :e_level, :e_exp, :e_attack,
             :e_health, :e_rock_chance, :e_paper_chance, :e_scissor_chance, :e_learning_curve
  has_one :adventurer
end
