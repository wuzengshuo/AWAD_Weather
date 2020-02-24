class AddLonToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :lon, :decimal, precision: 20, scale: 8
    add_column :addresses, :lat, :decimal, precision: 20, scale: 8
  end
end
