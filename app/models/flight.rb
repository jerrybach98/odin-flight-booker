class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: 'departure_id', inverse_of: :arriving_flights
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: 'arrival_id', inverse_of: :departing_flights
  has_many :flights 
  has_many :passengers, :through => :flights

  def start_datetime_formatted
    start_datetime.strftime("%m/%d/%Y")
  end
end
