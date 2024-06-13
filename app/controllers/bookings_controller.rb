class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @buddy = Buddy.find(params[:buddy_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @buddy = Buddy.find(params[:buddy_id])
    @booking.buddy = @buddy
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to buddy_booking_path(@buddy, @booking)
    else
      render template: 'buddies/show', status: :unprocessable_entity
    end
  end

  def show
    # @buddy = Buddy.find(params[:buddy_id])
    @booking = Booking.find(params[:id])
    @buddy = @booking.buddy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :total_price)
  end

end
