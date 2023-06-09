class CreateOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :price
      t.string  :name
    end 
  end
end