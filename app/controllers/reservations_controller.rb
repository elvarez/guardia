class ReservationsController < ApplicationController

  def create
    
    
  end


  def new

    @event = Event.find(params[:event_id])
    @reservation = Reservation.new

    
    
  end
  
end
