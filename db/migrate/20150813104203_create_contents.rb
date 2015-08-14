class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.references      :admin
      t.string          :page
      t.string          :element
      t.string          :content
      t.string          :iteration
      t.timestamps      null:false
    end
  end
end
