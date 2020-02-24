# == Schema Information
#
# Table name: hourly_forecasts
#
#  id         :bigint           not null, primary key
#  cloud      :integer
#  cond_code  :string(100)
#  cond_txt   :string(100)
#  dew        :integer
#  hum        :decimal(14, 4)
#  pop        :integer
#  pres       :integer
#  tmp        :decimal(14, 4)
#  vtime      :datetime
#  wind_deg   :integer
#  wind_dir   :string(100)
#  wind_sc    :string(100)
#  wind_spd   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address_id :integer....
#
class HourlyForecast < ApplicationRecord
  belongs_to :address
end
