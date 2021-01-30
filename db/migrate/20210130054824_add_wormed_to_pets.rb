class AddWormedToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :wormed, :boolean
  end
end
