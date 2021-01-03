class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :rooms
      t.integer :bathrooms

      t.timestamps
    end
  end
end
