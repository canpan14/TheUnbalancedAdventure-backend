# frozen_string_literal: true

class Adventurer < ApplicationRecord
  after_initialize :init

  belongs_to :user
  belongs_to :level
  validates :user_id, uniqueness: { scope: :name }
  validates :name, presence: true

  def init
    self.level_id ||= 1 if new_record?
    self.current_exp ||= 0 if new_record?
    self.is_alive ||= true if new_record?
  end
end
