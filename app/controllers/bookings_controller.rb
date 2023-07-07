class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight]
    @number_passengers = params[:number_passengers]

    @flight = Flight.find(@flight_id)

    @booking = Booking.new
    @booking.passengers.build

    # @passengers = []

    # for i in 0..(@number_passengers.to_i - 1)
    #   passenger = Passenger.new
    #   @passengers.push(passenger)
    # end
  end

  def create

    @booking = Booking.new(booking_params)

    if @booking.save!
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email, :flight_id])
  end
end
