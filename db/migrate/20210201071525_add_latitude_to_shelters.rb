class AddLatitudeToShelters < ActiveRecord::Migration[5.2]
  def change
    add_column :shelters, :latitude, :float
  end
end
