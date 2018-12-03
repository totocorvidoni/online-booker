class FlightsController < ApplicationController
  def index
    @flight = Flight.new
    @airport_options = Airport.all.map { |air| [air.name, air.code] }
    @passenger_options = Array.new(4) { |p| [p + 1, p + 1] }
    @departure_dates = Flight.all.map(&:departure_formatted)
  end
end
