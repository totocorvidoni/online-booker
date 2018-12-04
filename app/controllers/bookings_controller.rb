class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
    @passenger = Passenger.find(@booking.passenger_id)
  end

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    @booking.flight_id = @flight.id
    @passengers = Array.new(params[:num_tickets].to_i) { Passenger.new }
  end

  def create
    params[:passengers].each_pair do |ord, v|
      passenger = Passenger.create!(passenger_params(ord))
      passenger.bookings.create!(booking_params)
    end
    redirect_to booking_path Booking.last.id
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, :passenger_id)
    end

    def passenger_params(ord)
      params.require(:passengers).require(ord).permit(:name, :email)
    end

end
