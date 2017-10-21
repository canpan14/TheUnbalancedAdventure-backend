# frozen_string_literal: true

class AddColumnsRockCountAndPaperCountAndScissorCountToAdventurers < ActiveRecord::Migration[5.1]
  def change
    add_column :adventurers, :rock_count, :integer, default: 0
    add_column :adventurers, :paper_count, :integer, default: 0
    add_column :adventurers, :scissor_count, :integer, default: 0
  end
end
