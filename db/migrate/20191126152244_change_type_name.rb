class ChangeTypeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cars, :type, :car_category
  end
end
