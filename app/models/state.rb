# frozen_string_literal: true

class State < ApplicationRecord
  belongs_to :adventurer, dependent: :destroy
  has_one :user, through: :adventurer
end
