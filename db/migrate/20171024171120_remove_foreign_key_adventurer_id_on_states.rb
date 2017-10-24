# frozen_string_literal: true

class RemoveForeignKeyAdventurerIdOnStates < ActiveRecord::Migration[5.1]
  def change
    remove_column :states, :adventurer_id, :integer
    add_reference :states, :adventurer, index: true, foreign_key: false
  end
end
