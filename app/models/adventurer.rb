# frozen_string_literal: true

class Adventurer < ApplicationRecord
  before_create :build_default_state
  after_initialize :init

  belongs_to :user
  belongs_to :level
  has_one :state, dependent: :destroy
  validates :name, presence: true

  def init
    self.level_id ||= 1 if new_record?
    self.current_exp ||= 0 if new_record?
    self.is_alive ||= true if new_record?
  end

  def build_default_state
    build_state
    true
  end
end
