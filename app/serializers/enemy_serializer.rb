# frozen_string_literal: true

class EnemySerializer < ActiveModel::Serializer
  attributes :id, :name, :rock_chance, :paper_chance, :scissor_chance
  has_one :level
end
