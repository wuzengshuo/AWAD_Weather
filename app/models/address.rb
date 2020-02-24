# == Schema Information
#
# Table name: addresses
#
#  id          :bigint           not null, primary key
#  cid         :string(100)
#  lat         :decimal(20, 8)
#  lon         :decimal(20, 8)
#  parent_city :string(100)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Address < ApplicationRecord
  has_many :daily_forecasts, dependent: :destroy
  has_many :hourly_forecasts, dependent: :destroy

  def get_daily
    return if self.daily_forecasts.find_by(vdate: Time.now.to_date)
    url = "https://api.heweather.net/s6/weather/forecast?location=#{self.cid}&key=f29d562861e348a68e3cc1071095a702"
    cdata = JSON.parse(Faraday.get(url).body)
    p "------------------------done---------------------------"
    cdata["HeWeather6"][0]["daily_forecast"].each do |data|
      final_date = data["date"].to_date
      next if self.daily_forecasts.find_by(vdate: final_date)
      self.daily_forecasts.create(
        cond_code_d: data["cond_code_d"],
        cond_code_n: data["cond_code_n"],
        cond_txt_d: data["cond_txt_d"],
        cond_txt_n: data["cond_txt_n"],
        vdate: final_date,
        hum: data["hum"],
        pcpn: data["pcpn"],
        pop: data["pop"],
        pres: data["pres"],
        tmp_max: data["tmp_max"],
        tmp_min: data["tmp_min"],
        uv_index: data["uv_index"],
        vis: data["vis"],
        wind_deg: data["wind_deg"],
        wind_dir: data["wind_dir"],
        wind_sc: data["wind_sc"],
        wind_spd: data["wind_spd"]
      )
    end
  end

  # 168 hour
  def get_hourly
    return if self.hourly_forecasts.find_by(vtime: Time.now.all_day)
    url = "https://api.heweather.net/s6/weather/hourly?location=#{self.cid}&key=f29d562861e348a68e3cc1071095a702"
    cdata = JSON.parse(Faraday.get(url).body)
    p "------------------------done---------------------------"
    cdata["HeWeather6"][0]["hourly"].each do |data|
      final_time = data["time"].to_datetime
      next if self.hourly_forecasts.find_by(vtime: final_time)
      self.hourly_forecasts.create(
        vtime: final_time,
        cond_code: data["cond_code"],
        cond_txt: data["cond_txt"],
        cloud: data["cloud"],
        dew: data["dew"],
        hum: data["hum"],
        pop: data["pop"],
        pres: data["pres"],
        tmp: data["tmp"],
        wind_deg: data["wind_deg"],
        wind_dir: data["wind_dir"],
        wind_sc: data["wind_sc"],
        wind_spd: data["wind_spd"]
      )
    end
  end
end
