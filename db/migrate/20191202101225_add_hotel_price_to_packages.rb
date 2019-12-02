class AddHotelPriceToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :hotel_price, :integer
  end
end
