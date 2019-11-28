class AddColumnsToPackages < ActiveRecord::Migration[5.2]
  def change
    add_reference :packages, :train_from, foreign_key: { to_table: :trains }
    add_reference :packages, :train_to, foreign_key: { to_table: :trains }
  end
end
