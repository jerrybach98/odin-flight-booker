class FlightsController < ApplicationController

  def index
    @airport = Airport.all.map{ |u| [ u.code, u.id ] }
    @flights = Flight.all
  end
end
