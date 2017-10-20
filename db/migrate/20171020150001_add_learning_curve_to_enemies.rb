class AddLearningCurveToEnemies < ActiveRecord::Migration[5.1]
  def change
    add_column :enemies, :learning_curve, :decimal
  end
end
