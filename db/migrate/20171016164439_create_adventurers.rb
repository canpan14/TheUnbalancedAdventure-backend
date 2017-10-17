# frozen_string_literal: true

class CreateAdventurers < ActiveRecord::Migration[5.1]
  def change
    create_table :adventurers do |t|
      t.string :name, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :adventurers, %i[user_id name], unique: true
  end
end
