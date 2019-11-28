class AddCoordinatesToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :latitude2, :float
    add_column :packages, :longitude2, :float
  end
end
