class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :statement
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
