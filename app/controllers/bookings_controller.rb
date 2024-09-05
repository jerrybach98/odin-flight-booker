class BookingsController < ApplicationController

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new

    params[:passengers].to_i.times { @booking.passengers.build }
  end 


  def create

    puts "Booking Parameters: #{params[:booking].inspect}"

    @flight = Flight.find(params[:booking][:flight_id])
    puts "Flight found: #{@flight.inspect}" # Debugging the flight object

    @booking = Booking.build(bookings_params)
    puts "Booking after initialization: #{@booking.inspect}"

      if @booking.save
          flash[:success] = "Your flight has been booked!"
          redirect_to booking_path(@booking.id)
      else
          render :new, status: :unprocessable_entity
      end
  end


  private
  def bookings_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
