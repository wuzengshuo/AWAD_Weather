class Admin::AddressesController < AdminHelpController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  # GET /admin/addresses
  def index
    @addresses = Address.all
  end

  # GET /admin/addresses/1
  def show
  end

  # GET /admin/addresses/new
  def new
    @address = Address.new
  end

  # GET /admin/addresses/1/edit
  def edit
  end

  # POST /admin/addresses
  def create
    @address = Address.new(address_params)

    if @address.save
      redirect_to [:admin, @address], notice: 'Address was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/addresses/1
  def update
    if @address.update(address_params)
      redirect_to [:admin, @address], notice: 'Address was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/addresses/1
  def destroy
    @address.destroy
    redirect_to admin_addresses_url, notice: 'Address was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def address_params
      params.require(:address).permit(:cid, :parent_city, :lon, :lat)
    end
end
