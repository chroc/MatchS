class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.belongs_to :player, index: true
      t.string :name
      t.string :player_1
      t.string :player_2
      t.string :player_3
      t.string :player_4
      t.string :player_5
      t.string :player_6
      t.string :player_7
      t.string :player_8
      t.string :player_9
      t.string :player_10
      t.string :player_11
      t.string :player_12
      t.string :player_13
      t.string :player_14
      t.string :player_15

      t.timestamps
    end
  end
end
