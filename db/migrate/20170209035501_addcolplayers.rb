class Addcolplayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :rating, :float
  end
end
