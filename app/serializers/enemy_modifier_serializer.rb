# frozen_string_literal: true

class EnemyModifierSerializer < ActiveModel::Serializer
  attributes :id, :text, :is_prefix, :rock_chance, :paper_chance,
             :scissor_chance, :learning_curve, :attack_mult, :health_mult
end
