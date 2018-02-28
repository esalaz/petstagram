class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :comment
      t.belongs_to :pet, foreign_key: true

      t.timestamps
    end
  end
end
