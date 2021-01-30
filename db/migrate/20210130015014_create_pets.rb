class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.integer :animal_type
      t.integer :age
      t.text :description
      t.boolean :available
      t.integer :user_id
      t.integer :shelter_id

      t.timestamps
    end
  end
end
