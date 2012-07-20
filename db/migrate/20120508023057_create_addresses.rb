class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
