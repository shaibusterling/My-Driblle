class AddUserKraToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :user_kra, :string
  end
end
