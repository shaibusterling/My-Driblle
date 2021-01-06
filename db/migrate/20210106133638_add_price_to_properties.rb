class AddPriceToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :price, :integer, default: 100
  end
end
