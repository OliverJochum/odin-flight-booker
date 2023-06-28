class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight]
    @number_passengers = params[:number_passengers]

    @flight = Flight.find(@flight_id)

    @booking = Booking.new

    @passengers = []

    for i in 0..(@number_passengers.to_i - 1)
      passenger = Passenger.new
      @passengers.push(passenger)
    end
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:alert] = "Success"
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    params.permit(:start, :departure_airport_id, :arrival_airport_id)
  end
end
