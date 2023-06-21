class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{|a| [a.code]}
    @start_options = Flight.all.map{|f| [f.start]}

    @flights = []
    if params[:departure_airport_id] and params[:arrival_airport_id] and params[:start]
      @flights = Flight.search params[:departure_airport_id], params[:arrival_airport_id], params[:start].to_datetime 
    end
  end

  def select
    redirect_to new_booking_path
  end
end
