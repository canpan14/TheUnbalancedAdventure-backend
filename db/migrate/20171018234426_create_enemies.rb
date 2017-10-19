# frozen_string_literal: true

class CreateEnemies < ActiveRecord::Migration[5.1]
  def change
    create_table :enemies do |t|
      t.string :name
      t.references :level, foreign_key: true
      t.decimal :attack_chance
      t.decimal :dodge_chance
      t.decimal :predict_dodge_chance

      t.timestamps
    end
  end
end
