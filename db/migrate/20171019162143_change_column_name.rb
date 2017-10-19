# frozen_string_literal: true

class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :enemies, :attack_chance, :rock_chance
    rename_column :enemies, :dodge_chance, :paper_chance
    rename_column :enemies, :predict_dodge_chance, :scissor_chance
  end
end
