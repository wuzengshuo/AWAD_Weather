class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :cid, limit: 100
      t.string :parent_city, limit: 100

      t.timestamps
    end
  end
end
