class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport,   class_name: 'Airport'
  has_many :bookings
  has_many :passengers, through: :bookings

  def self.search_flight(terms)
    from = terms['from_airport']
    to   = terms['to_airport']
    date = terms['departure'].to_date..(terms['departure'].to_date + 1.day)
    where(from_airport: from, to_airport: to, departure: date)
  end

  # Formats a single departure date
  def departure_formatted
    departure.strftime("%d/%m/%Y")
  end
  # Displays the name of departing - arriving airports
  def route
    "#{from_airport.name} - #{to_airport.name}"
  end
end
