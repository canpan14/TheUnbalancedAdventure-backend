# frozen_string_literal: true

class DropTableExamples < ActiveRecord::Migration[5.1]
  def change
    drop_table :examples
  end
end