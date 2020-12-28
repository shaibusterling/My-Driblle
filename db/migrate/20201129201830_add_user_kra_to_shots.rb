class AddUserKraToShots < ActiveRecord::Migration[6.0]
  def change
    add_column :shots, :user_kra, :string
  end
end
