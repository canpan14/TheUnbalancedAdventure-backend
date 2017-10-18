# frozen_string_literal: true

class AddLevelToAdventurer < ActiveRecord::Migration[5.1]
  def change
    add_reference :adventurers, :level, index: true, foreign_key: true
  end
end
