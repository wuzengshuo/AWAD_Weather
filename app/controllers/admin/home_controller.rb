class Admin::HomeController < AdminHelpController
  def index
    # if session[:address_id].present?
    #   redirect_to admin_daily_forecasts_path(address_id: session[:address_id])
    # end
    @data = []
    Address.all.each do |address|
      current_tmp_min = address.daily_forecasts.find_by(vdate: Time.now.to_date)&.tmp_min
      current_tmp_max = address.daily_forecasts.find_by(vdate: Time.now.to_date)&.tmp_max
      @data << [address.parent_city, address.lon, address.lat, "#{current_tmp_min}℃-#{current_tmp_max}℃", address.id]
    end
    @data
  end

  def hourly_data
    address_id = params[:address_id]
    @address = Address.find_by(id: address_id)
    @address.get_hourly
    arr = []
    @address.hourly_forecasts.each do |hourly|
      arr << hourly.vtime.to_s
    end
    @time_array = arr
    @tmp_array = @address.hourly_forecasts.pluck(:tmp)
    @status_array = @address.hourly_forecasts.pluck(:cond_code)
    @pop_array = @address.hourly_forecasts.pluck(:pop)
  end
end
