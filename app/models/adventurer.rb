# frozen_string_literal: true

class Adventurer < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: { scope: :name }
  # validates :name, presense: true
end
