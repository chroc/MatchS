class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.belongs_to :field, index: true
      t.string :name
      t.string :team_1
      t.string :team_2
      t.date :date
      t.datetime :time
      t.text :additional_info

      t.timestamps
    end
  end
end
