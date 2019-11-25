class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.integer :stars
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
