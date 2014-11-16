class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :item
      t.string :platform
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.integer :stock

      t.timestamps
    end
  end
end
