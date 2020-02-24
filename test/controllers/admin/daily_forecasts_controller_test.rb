require 'test_helper'

class Admin::DailyForecastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_forecast = daily_forecasts(:one)
  end

  test "should get index" do
    get admin_daily_forecasts_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_daily_forecast_url
    assert_response :success
  end

  test "should create daily_forecast" do
    assert_difference('DailyForecast.count') do
      post admin_daily_forecasts_url, params: { daily_forecast: { address_id: @daily_forecast.address_id, cond_code_d: @daily_forecast.cond_code_d, cond_code_n: @daily_forecast.cond_code_n, cond_txt_d: @daily_forecast.cond_txt_d, cond_txt_n: @daily_forecast.cond_txt_n, hum: @daily_forecast.hum, pcpn: @daily_forecast.pcpn, pop: @daily_forecast.pop, pres: @daily_forecast.pres, tmp_max: @daily_forecast.tmp_max, tmp_min: @daily_forecast.tmp_min, uv_index: @daily_forecast.uv_index, vdate: @daily_forecast.vdate, vis: @daily_forecast.vis, wind_deg: @daily_forecast.wind_deg, wind_dir: @daily_forecast.wind_dir, wind_sc: @daily_forecast.wind_sc, wind_spd: @daily_forecast.wind_spd } }
    end

    assert_redirected_to admin_daily_forecast_url(DailyForecast.last)
  end

  test "should show daily_forecast" do
    get admin_daily_forecast_url(@daily_forecast)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_daily_forecast_url(@daily_forecast)
    assert_response :success
  end

  test "should update daily_forecast" do
    patch admin_daily_forecast_url(@daily_forecast), params: { daily_forecast: { address_id: @daily_forecast.address_id, cond_code_d: @daily_forecast.cond_code_d, cond_code_n: @daily_forecast.cond_code_n, cond_txt_d: @daily_forecast.cond_txt_d, cond_txt_n: @daily_forecast.cond_txt_n, hum: @daily_forecast.hum, pcpn: @daily_forecast.pcpn, pop: @daily_forecast.pop, pres: @daily_forecast.pres, tmp_max: @daily_forecast.tmp_max, tmp_min: @daily_forecast.tmp_min, uv_index: @daily_forecast.uv_index, vdate: @daily_forecast.vdate, vis: @daily_forecast.vis, wind_deg: @daily_forecast.wind_deg, wind_dir: @daily_forecast.wind_dir, wind_sc: @daily_forecast.wind_sc, wind_spd: @daily_forecast.wind_spd } }
    assert_redirected_to admin_daily_forecast_url(DailyForecast.last)
  end

  test "should destroy daily_forecast" do
    assert_difference('DailyForecast.count', -1) do
      delete admin_daily_forecast_url(@daily_forecast)
    end

    assert_redirected_to admin_daily_forecasts_url
  end
end
