class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string        :body, null: false
      t.integer       :reservation_id
      t.integer       :user_id, null: false
      t.timestamps    null:false, null: false
    end
  end
end
