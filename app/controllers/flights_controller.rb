class FlightsController < ApplicationController

  def index
    @airport = Airport.all.order(:code).map{ |u| [ u.code, u.id ] }
    @flights = Flight.all
    @start_datetime = Flight.all.order(:start_datetime).map{ |u| [ u.start_datetime_formatted, u.start_datetime ] }
    puts "Search Params: #{search_flights_params.inspect}"

      
    start_datetime = Date.parse(params[:start_datetime])
    puts "Parsed Start DateTime: #{start_datetime}"

    @search = Flight.where(departure_id: search_flights_params[:departure_id], arrival_id: search_flights_params[:arrival_id], start_datetime: start_datetime.beginning_of_day..start_datetime.end_of_day)
    puts "Search Query: #{@search.to_sql}"
  end

  private
  def search_flights_params
    params.permit(:departure_id,:arrival_id,:start_datetime)
  end

end
