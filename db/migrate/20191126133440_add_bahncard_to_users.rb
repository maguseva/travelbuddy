class AddBahncardToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bahncard, :string, default: "no value"
  end
end
