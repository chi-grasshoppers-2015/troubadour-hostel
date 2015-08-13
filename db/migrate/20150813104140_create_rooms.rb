class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer       :capacity
      t.decimal       :rate
      t.integer       :building_id
      t.timestamps    null:false
    end
  end
end
