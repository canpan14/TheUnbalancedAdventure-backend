# frozen_string_literal: true

class EnemySerializer < ActiveModel::Serializer
  attributes :id, :name, :attack_chance, :dodge_chance, :predict_dodge_chance
  has_one :level
end
