class AddTrainPriceToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :train_price, :integer
  end
end
