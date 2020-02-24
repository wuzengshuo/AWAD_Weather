class CreateDailyForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_forecasts do |t|
      t.integer :address_id
      t.string :cond_code_d, limit: 100
      t.string :cond_code_n, limit: 100
      t.string :cond_txt_d, limit: 100
      t.string :cond_txt_n, limit: 100
      t.datetime :vdate
      t.decimal :hum, precision: 14, scale: 4
      t.decimal :pcpn, precision: 14, scale: 4
      t.integer :pop
      t.integer :pres
      t.decimal :tmp_max, precision: 14, scale: 4
      t.decimal :tmp_min, precision: 14, scale: 4
      t.integer :uv_index
      t.integer :vis
      t.integer :wind_deg
      t.string :wind_dir, limit: 100
      t.string :wind_sc, limit: 100
      t.integer :wind_spd

      t.timestamps
    end
  end
end
