class AddColumnImgFields < ActiveRecord::Migration[5.0]
  def change
    add_column :fields, :img, :string
  end
end
