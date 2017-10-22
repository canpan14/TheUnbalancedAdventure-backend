# frozen_string_literal: true

class AddColumnKillsToAdventurers < ActiveRecord::Migration[5.1]
  def change
    add_column :adventurers, :kills, :integer, default: 0
  end
end
