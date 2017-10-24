# frozen_string_literal: true

class State < ApplicationRecord
  has_one :adventurer
  has_one :user, through: :adventurer
end
