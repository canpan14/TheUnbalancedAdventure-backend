# frozen_string_literal: true

class EnemySerializer < ActiveModel::Serializer
  attributes :id, :name, :rock_chance, :paper_chance, :scissor_chance, :learning_curve
  has_one :level
end
