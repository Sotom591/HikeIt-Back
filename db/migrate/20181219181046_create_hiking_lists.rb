class CreateHikingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :hiking_lists do |t|
      t.integer :API_id
      t.string :name
      t.string :summary
      t.string :difficulty
      t.integer :stars
      t.integer :starVotes
      t.string :location
      t.string :imgSmall
      t.string :imgMedium
      t.integer :length
      t.integer :ascent
      t.integer :descent
      t.integer :high
      t.integer :low
      t.integer :longitude
      t.integer :latitude

      t.integer :user_id
      t.timestamps
    end
  end
end
