# frozen_string_literal: true

class Level < ApplicationRecord
  has_many :adventurers
  has_many :enemies
end
