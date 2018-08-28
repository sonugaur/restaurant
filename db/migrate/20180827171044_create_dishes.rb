class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes, id: :uuid do |t|
      t.string :image
      t.string :name
      t.string :description
      t.float :price
      t.references :course, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
