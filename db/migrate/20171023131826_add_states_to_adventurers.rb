# frozen_string_literal: true

class AddStatesToAdventurers < ActiveRecord::Migration[5.1]
  def change
    add_reference :adventurers, :state, index: true, foreign_key: true
  end
end
