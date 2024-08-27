class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end


  def create
    @booking = current_user.bookings.build(flights_params)

      if @event.save
          flash[:success] = "Your flight has been selected!"
          redirect_to booking_path(@booking.id)
      else
          render :new, status: :unprocessable_entity
      end
  end


  private
  def flights_params
    params.permit(:passengers,:flight_id,:start_datetime)
  end
end
