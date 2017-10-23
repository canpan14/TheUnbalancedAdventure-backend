# frozen_string_literal: true

class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.references :adventurer, index: true, foreign_key: true
      t.integer :a_health, default: 0
      t.integer :a_attack, default: 0
      t.boolean :in_fight, default: false
      t.string :e_name
      t.integer :e_level, default: 0
      t.integer :e_exp, default: 0
      t.integer :e_attack, default: 0
      t.integer :e_health, default: 0
      t.decimal :e_rock_chance, default: 0.0
      t.decimal :e_paper_chance, default: 0.0
      t.decimal :e_scissor_chance, default: 0.0
      t.decimal :e_learning_curve, default: 0.0

      t.timestamps
    end
  end
end
