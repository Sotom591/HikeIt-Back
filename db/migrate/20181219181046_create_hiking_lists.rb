class CreateHikingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :hiking_lists do |t|
      t.string :trail
      t.integer :user_id
      t.timestamps
    end
  end
end
