# frozen_string_literal: true

class AddColumnIsAliveToAdventurers < ActiveRecord::Migration[5.1]
  def change
    add_column :adventurers, :is_alive, :boolean
  end
end
