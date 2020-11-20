class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    authorize @booking
    @double = Double.find(params[:double_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @double = Double.find(params[:double_id])
    @booking.double = @double
    @booking.total_price = (params[:booking][:end_date].to_date - params[:booking][:start_date].to_date).to_i * @double.price
    if @booking.save
      redirect_to dashboard_path
    else
      render "doubles/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :total_price)
  end
end
