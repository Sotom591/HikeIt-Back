class CreatePackingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :packing_items do |t|
      t.string :name
      t.boolean :packed
      t.integer :packing_lists_id
      t.timestamps
    end
  end
end
