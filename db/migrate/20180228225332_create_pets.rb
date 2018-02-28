class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :image
      t.string :type
      t.string :breed
      t.string :favorite_thing
      t.belongs_to :owner, foreign_key: true

      t.timestamps
    end
  end
end
