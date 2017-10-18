# frozen_string_literal: true

class LevelSerializer < ActiveModel::Serializer
  attributes :id, :number, :exp_needed, :attack, :health
end
