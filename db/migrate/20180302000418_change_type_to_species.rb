class ChangeTypeToSpecies < ActiveRecord::Migration[5.1]
  def change
    rename_column :pets, :type, :species
  end
end
