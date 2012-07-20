class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :artist_id
      t.string :name
      t.float :price
      t.integer :quantity
      t.timestamp :start_date
      t.timestamp :end_date
      t.text :description

      t.timestamps
    end
  end
end
