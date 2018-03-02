class ChangeTypeToString < ActiveRecord::Migration[5.1]
  def change
    change_table :pets do |t|
      t.change :type, :string
    end
  end
end
