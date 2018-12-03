class Flight < ApplicationRecord
  belongs_to :from_airport, :class_name => 'Airport'
  belongs_to :to_airport,   :class_name => 'Airport'

  # Formats a single departure date
  def departure_formatted
    departure.strftime("%d/%m/%Y")
  end
end
