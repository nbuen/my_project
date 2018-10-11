class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name, null: false, unique: true
      t.string :address, null: false
      t.decimal :latitude, null: false, precision: 15, scale:10
      t.decimal :longitude, null: false, precision: 15, scale:10

      t.timestamps
    end
  end
end
