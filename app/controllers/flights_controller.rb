class FlightsController < ApplicationController
  def index
    @flight = Flight.new
    @airport_options = Airport.all.map { |airport| [airport.name, airport.id] }
    @departure_dates = Flight.all.map(&:departure_formatted).uniq
    @passenger_options = Array.new(4) { |passenger| passenger + 1 }
    unless params[:flight_search].nil?
      @available_flights = Flight.search_flight(flight_search_params)
      @from = Airport.find(params[:flight_search]['from_airport'])
      @to   = Airport.find(params[:flight_search]['to_airport'])
    end
  end

  private

  def flight_search_params
    params.require('flight_search').permit('from_airport', 'to_airport',
                                           'departure', 'num_tickets')
  end
end
