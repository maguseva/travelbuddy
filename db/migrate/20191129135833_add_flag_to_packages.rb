class AddFlagToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :outdated, :boolean, null: false, default: false
  end
end
