class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.references :hotel, foreign_key: true
      t.references :train, foreign_key: true
      t.references :car, foreign_key: true
      t.string :dep_city
      t.string :arr_city
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
