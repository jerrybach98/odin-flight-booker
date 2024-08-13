class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: 'departure_id', inverse_of: :arrival_airport
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: 'arrival_id', inverse_of: :departure_airport
end
