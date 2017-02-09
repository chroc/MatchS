class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :player, index: true
      t.belongs_to :team, index: true
      t.belongs_to :field, index: true
      t.belongs_to :match, index: true
      t.text :content

      t.timestamps
    end
  end
end
