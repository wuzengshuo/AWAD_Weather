class Admin::DailyForecastsController < AdminHelpController
  before_action :set_daily_forecast, only: [:show, :edit, :update, :destroy]

  # GET /admin/daily_forecasts
  def index
    if params[:address_id].present?
      session[:address_id] = params[:address_id]
    end
    address_id = session[:address_id]
    @address = Address.find_by(id: address_id)
    @address.get_daily
    @q = @address.daily_forecasts.ransack(params[:q])
    if params[:q].present?
      if params[:q][:address_parent_city_cont].present?
        address = Address.find_by(parent_city: params[:q][:address_parent_city_cont])
        session[:address_id] = address.id
        address.get_daily
      end
      @q = DailyForecast.ransack(params[:q])
    end
    @daily_forecasts = @q.result(distinct: true)
  end

  # GET /admin/daily_forecasts/1
  def show
  end

  # GET /admin/daily_forecasts/new
  def new
    @daily_forecast = DailyForecast.new
  end

  # GET /admin/daily_forecasts/1/edit
  def edit
  end

  # POST /admin/daily_forecasts
  def create
    @daily_forecast = DailyForecast.new(daily_forecast_params)

    if @daily_forecast.save
      redirect_to [:admin, @daily_forecast], notice: 'Daily forecast was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/daily_forecasts/1
  def update
    if @daily_forecast.update(daily_forecast_params)
      redirect_to [:admin, @daily_forecast], notice: 'Daily forecast was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/daily_forecasts/1
  def destroy
    @daily_forecast.destroy
    redirect_to admin_daily_forecasts_url, notice: 'Daily forecast was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_forecast
      @daily_forecast = DailyForecast.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def daily_forecast_params
      params.require(:daily_forecast).permit(:address_id, :cond_code_d, :cond_code_n, :cond_txt_d, :cond_txt_n, :vdate, :hum, :pcpn, :pop, :pres, :tmp_max, :tmp_min, :uv_index, :vis, :wind_deg, :wind_dir, :wind_sc, :wind_spd)
    end
end
