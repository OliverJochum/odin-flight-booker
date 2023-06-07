class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{|a| [a.code]}
    @start_options = Flight.all.map{|f| [f.start]}


    @flights = Flight.search params[:departure_airport_id], params[:arrival_airport_id], params[:start].to_datetime
  end
end
