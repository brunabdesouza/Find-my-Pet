class AddLongitudeToShelters < ActiveRecord::Migration[5.2]
  def change
    add_column :shelters, :longitude, :float
  end
end
