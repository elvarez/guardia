class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    
    if @event.update_attributes(events_params)
      flash[:notice] = "Event updated"
      redirect_to @event
    else
      flash[:error] = "Error updating event"
      render :action => 'index'
    end
  end

  def events_params
    params.require(:event).permit(reservations_attributes: [:seat_id, :seat_col, :seat_row, :user_id])   
  end

end
