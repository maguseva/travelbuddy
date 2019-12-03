class AddOvernightsToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :overnights, :integer
  end
end
