# frozen_string_literal: true

class ChangeColumnsEnemyModifiers < ActiveRecord::Migration[5.1]
  def change
    remove_column :enemy_modifiers, :move_to_adjust
    rename_column :enemy_modifiers, :chance_adjust, :rock_chance
    add_column :enemy_modifiers, :paper_chance, :decimal
    add_column :enemy_modifiers, :scissor_chance, :decimal
  end
end
