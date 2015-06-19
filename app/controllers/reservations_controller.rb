class ReservationsController < ApplicationController

  def myreservations
    @events = Event.all
  end
  
  def index
    @events = Event.all
    @users = User.all
  end

  def create
      @event = Event.find(params[:event_id])
      @reservation = current_user.reservations.create(reservation_params)
      @reservation.event = @event
      if @reservation.save
        flash[:notice] = "Reserved!"
      else
        flash[:notice] = "Failure"
      end
  end

  def new
    @event = Event.find(params[:event_id])
    @allres = @event.reservations.all
    @reservations = @event.reservations.build
  end

  def reservation_params
    params.require(:reservation).permit(:seat_id, :seat_row, :seat_col)
  end

  
  
end
