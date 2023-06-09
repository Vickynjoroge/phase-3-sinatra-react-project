class CreateProduct < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :category
      t.string :url
      t.integer :rate
    end
  end
end
