# frozen_string_literal: true

class EnemyModifierSerializer < ActiveModel::Serializer
  attributes :id, :text, :is_prefix, :move_to_adjust, :chance_adjust,
             :learning_curve, :attack_mult, :health_mult
end
