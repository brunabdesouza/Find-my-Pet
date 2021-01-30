class AddVaccinatedToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :vaccinated, :boolean
  end
end
