class AddCarPriceToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :car_price, :integer
  end
end
