class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :postalcode
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
