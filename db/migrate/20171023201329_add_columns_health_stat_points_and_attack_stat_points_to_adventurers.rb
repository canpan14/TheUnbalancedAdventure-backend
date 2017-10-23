# frozen_string_literal: true

class AddColumnsHealthStatPointsAndAttackStatPointsToAdventurers < ActiveRecord::Migration[5.1]
  def change
    add_column :adventurers, :health_stat_points, :integer, default: 0
    add_column :adventurers, :attack_stat_points, :integer, default: 0
  end
end
