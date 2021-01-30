class AddAdoptionFeeToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :adoption_fee, :string
  end
end
