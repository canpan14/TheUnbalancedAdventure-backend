# frozen_string_literal: true

class Adventurer < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: { scope: :name }
end
