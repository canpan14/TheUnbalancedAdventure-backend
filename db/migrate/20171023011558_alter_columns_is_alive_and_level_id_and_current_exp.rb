# frozen_string_literal: true

class AlterColumnsIsAliveAndLevelIdAndCurrentExp < ActiveRecord::Migration[5.1]
  def change
    change_column :adventurers, :is_alive, default: true
    change_column :adventurers, :level_id, default: 1
    change_column :adventurers, :current_exp, default: false
  end
end
