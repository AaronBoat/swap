class CreateAccessoryItems < ActiveRecord::Migration
  def change
    create_table :accessory_items do |t|
      t.integer :accessory_id
      t.integer :cart_id
      t.integer :quantity

      t.timestamps
    end
  end
end
