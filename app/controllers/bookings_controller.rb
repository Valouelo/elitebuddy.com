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
    @booking.status = "pending"
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
    params.require(:booking).permit(:start_time, :end_time, :user_id, :buddy_id, :total_price)
  end

end
