# frozen_string_literal: true

class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.integer :number, null: false
      t.integer :exp_needed
      t.integer :attack
      t.integer :health

      t.timestamps
    end
  end
end
