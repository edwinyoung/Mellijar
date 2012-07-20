class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :route
      t.integer :width
      t.integer :height
      t.string :type
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
