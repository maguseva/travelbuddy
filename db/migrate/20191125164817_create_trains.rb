class CreateTrains < ActiveRecord::Migration[5.2]
  def change
    create_table :trains do |t|
      t.string :carrier_name
      t.string :dep_city
      t.string :arr_city
      t.string :train_number
      t.integer :price
      t.string :category
      t.string :photo
      t.string :dep_time
      t.string :arr_time

      t.timestamps
    end
  end
end
