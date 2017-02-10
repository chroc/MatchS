class ChangePassword < ActiveRecord::Migration[5.0]
  def change
    change_column :players, :passwrod, :text
    rename_column :players, :passwrod, :password_digest
  end
end
