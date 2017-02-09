class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :passwrod
      t.date :birthdate
      t.string :genre
      t.string :position_1
      t.string :position_2
      t.text :additional_info

      t.timestamps
    end

    def change
      rename_column :players, :passwrod, :password
    end
  end
end
