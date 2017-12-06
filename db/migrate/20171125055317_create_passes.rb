class CreatePasses < ActiveRecord::Migration
  def change
    create_table :passes do |t|

      t.string :title
      t.text :content
      t.integer :price
      t.integer :time
      t.string :salonname
      t.text :conditions
      t.string :place
      t.string :phonenumber
      t.integer :distance
      t.integer :salon_id

      t.timestamps
    end
  end
end
