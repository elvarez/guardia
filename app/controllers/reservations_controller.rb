class ReservationsController < ApplicationController

  def create

    @event = Event.find(params[:event_id])
    @reservation = current_user.reservations.build(reservation_params)
    @reservation.event = @event
    
    if @reservation.save
      flash[:notice] = "Reserved!"
      redirect_to '/'
    else
      flash[:error] = "Not there yet"
      redirect_to '/'
    end
  end

  def new
    @event = Event.find(params[:event_id])
    @allres = @event.reservations.all
    @reservation = Reservation.new
  end

  def reservation_params
    params.require(:reservation).permit(:seat_id, :seat_row, :seat_col)
  end
  
end
