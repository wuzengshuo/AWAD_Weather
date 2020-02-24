# == Schema Information
#
# Table name: daily_forecasts
#
#  id          :bigint           not null, primary key
#  cond_code_d :string(100)
#  cond_code_n :string(100)
#  cond_txt_d  :string(100)
#  cond_txt_n  :string(100)
#  hum         :decimal(14, 4)
#  pcpn        :decimal(14, 4)
#  pop         :integer
#  pres        :integer
#  tmp_max     :decimal(14, 4)
#  tmp_min     :decimal(14, 4)
#  uv_index    :integer
#  vdate       :datetime
#  vis         :integer
#  wind_deg    :integer
#  wind_dir    :string(100)
#  wind_sc     :string(100)
#  wind_spd    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  address_id  :integer
#
require 'test_helper'

class DailyForecastTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
