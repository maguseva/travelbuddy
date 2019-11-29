class RemoveBahncardFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :bahncard, :string
  end
end
