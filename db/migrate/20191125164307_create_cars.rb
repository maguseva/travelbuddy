class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.string :photo
      t.string :type
      t.string :company_name

      t.timestamps
    end
  end
end
