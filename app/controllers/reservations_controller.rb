class ReservationsController < ApplicationController

  def create

    @reservation = false

    if @reservation = false
      flash[:notice] = "Reserved!"
      redirect_to '/'
    else
      flash[:error] = "Not there yet"
      redirect_to '/'
    end

  end


  def new

    @event = Event.find(params[:event_id])
    @reservation = Reservation.new

    
    
  end
  
end
