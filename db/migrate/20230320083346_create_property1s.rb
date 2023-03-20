class CreateProperty1s < ActiveRecord::Migration[7.0]
  def change
    create_table :property1s do |t|
      t.references :account
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :bathrooms
      t.string :photo
      t.timestamps
    end
  end
end
