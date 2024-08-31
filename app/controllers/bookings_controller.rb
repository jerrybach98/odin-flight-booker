class BookingsController < ApplicationController

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight: @flight) #params for passengers?

    params[:passengers].to_i.times { @booking.passengers.build }
  end 


  def create
    @booking = bookings.build(bookings_params) #params for passengers?

      if @bookings.save
          flash[:success] = "Your flight has been selected!"
          redirect_to booking_path(@booking.id)
      else
          render :new, status: :unprocessable_entity
      end
  end


  private
  def bookings_params
    params.permit(:passengers,:flight_id) #add nested params , :passenger_attributes => [:id, :name, :email]
  end
end
