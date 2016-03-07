class BookingController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @booking = current_user.booking.create(booking_params)

    redirect_to @booking.room
  end

  private
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :price, :total, :room_id)
    end
end
