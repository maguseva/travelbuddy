class RemoveColumnTrainsInPackages < ActiveRecord::Migration[5.2]
  def change
    remove_column :packages, :train_id
  end
end
