class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight_id]
    @number_passengers = params[:number_passengers]

    @flight = Flight.find(@flight_id)

    @booking = Booking.new

    @passengers = []

    for i in 0..number_passengers-1
      passenger = Passenger.new
      @passengers.push(passenger)
    end
  end

  def create
    @booking = Booking.new(booking_params)

  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
