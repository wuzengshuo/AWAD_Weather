class CreateHourlyForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :hourly_forecasts do |t|
      t.integer :address_id
      t.datetime :vtime
      t.decimal :tmp, precision: 14, scale: 4
      t.string :cond_code, limit: 100
      t.string :cond_txt, limit: 100
      t.integer :wind_deg
      t.string :wind_dir, limit: 100
      t.string :wind_sc, limit: 100
      t.integer :wind_spd
      t.decimal :hum, precision: 14, scale: 4
      t.integer :pres
      t.integer :pop
      t.integer :dew
      t.integer :cloud

      t.timestamps
    end
  end
end
