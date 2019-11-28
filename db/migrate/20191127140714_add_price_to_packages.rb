class AddPriceToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :price, :integer, null: false, default: 0
  end
end
