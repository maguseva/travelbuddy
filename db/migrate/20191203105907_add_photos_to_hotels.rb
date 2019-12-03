class AddPhotosToHotels < ActiveRecord::Migration[5.2]
  def change
    add_column :hotels, :photo2, :string
    add_column :hotels, :photo3, :string
  end
end
