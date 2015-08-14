class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string            :name
      t.string            :email, null: false, uniqueness: true
      t.string            :hashed_password
      t.string            :photo_link
      t.string            :street_address
      t.string            :city
      t.string            :state
      t.integer           :zip
      t.string            :phone_number
      t.boolean           :admin, default: false
      t.timestamps        null:false
    end
  end
end
