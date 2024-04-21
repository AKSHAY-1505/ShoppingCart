class CreateFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
