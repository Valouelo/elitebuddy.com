class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @buddy = Buddy.find(params[:buddy_id].to_i)
  end

  def create
    @booking = Booking.new(booking_params)
    @buddy = Buddy.find(params[:buddy_id].to_i)
    @booking.buddy = @buddy
    @booking.user = current_user
    @temps_resa =  (@booking.end_time - @booking.start_time).to_i
    @booking.total_price = @buddy.price_per_day * temps_resa
    if @booking.save
      redirect_to buddy_booking_path(@buddy, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :user_id, :buddy_id)
  end

end
