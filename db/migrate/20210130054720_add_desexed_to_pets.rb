class AddDesexedToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :desexed, :boolean
  end
end
