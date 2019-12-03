class AddPhotos2ToHotels < ActiveRecord::Migration[5.2]
  def change
    add_column :hotels, :photo4, :string
    add_column :hotels, :photo5, :string
  end
end
