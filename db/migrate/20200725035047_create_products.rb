class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :discribe, null: false
      t.string :brand
      t.string :status, null: false
      t.integer :price, null: false
      t.string :shipping_cost, null: false
      t.string :shipping_from, null: false
      t.integer :days, null: false
      t.timestamps
    end
  end
end
