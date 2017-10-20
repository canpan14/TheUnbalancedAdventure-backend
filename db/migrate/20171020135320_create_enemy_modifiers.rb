# frozen_string_literal: true

class CreateEnemyModifiers < ActiveRecord::Migration[5.1]
  def change
    create_table :enemy_modifiers do |t|
      t.string :text, null: false
      t.boolean :is_prefix
      t.string :move_to_adjust
      t.decimal :chance_adjust
      t.decimal :learning_curve
      t.decimal :attack_mult
      t.decimal :health_mult

      t.timestamps
    end
  end
end
