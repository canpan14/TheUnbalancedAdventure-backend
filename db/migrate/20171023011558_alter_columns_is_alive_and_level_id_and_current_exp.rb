# frozen_string_literal: true

class AlterColumnsIsAliveAndLevelIdAndCurrentExp < ActiveRecord::Migration[5.1]
  def change
    change_column :adventurers, :is_alive, :boolean, default: true
    change_column :adventurers, :current_exp, :integer, default: 0
  end
end
