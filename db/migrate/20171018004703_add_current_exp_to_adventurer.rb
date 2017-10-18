class AddCurrentExpToAdventurer < ActiveRecord::Migration[5.1]
  def change
    add_column :adventurers, :current_exp, :integer
  end
end
