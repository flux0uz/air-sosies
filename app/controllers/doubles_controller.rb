class DoublesController < ApplicationController
  before_action :set_double, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @doubles = policy_scope(Double).where(sql_query, query: "%#{params[:query]}%")
    elsif (params[:query] == "" || params[:query].nil?) && params[:category].present?
      sql_query = "category ILIKE :category"
      @doubles = policy_scope(Double).where(sql_query, category: "%#{params[:category]}%")
    else
      @doubles = policy_scope(Double)
    end
    @markers = @doubles.geocoded.map do |double|
      {
        lat: double.latitude,
        lng: double.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { double: double })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    authorize @double
    @booking = Booking.new
    @bookings = Booking.where(double_id: @double.id)
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
    end
  end

  def new
    @double = Double.new
    authorize @double
  end

  def create
    @double = Double.new(double_params)
    authorize @double
    @double.user = current_user
    if @double.save
      redirect_to double_path(@double)
    else
      render :new
    end
  end

  def edit
    authorize @double
  end

  def update
    authorize @double
    @double.user = current_user
    @double.update(double_params)
    redirect_to double_path
  end

  def destroy
    @double.destroy
    authorize @double
    redirect_to doubles_path
  end

  private
  def set_double
    @double = Double.find(params[:id])
  end
  def double_params
    params.require(:double).permit(:price, :name, :address, :category, :photo)
  end
end
