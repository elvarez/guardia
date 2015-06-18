class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    token = params[:stripe_card_token]
    if charge = Stripe::Charge.create(
                                      :amount => 1000,
                                      :currency => "chf",
                                      :source => token,
                                      :description => "example"
                                      )
      @event = Event.find(params[:id])
      if @event.update_attributes(events_params)
        flash[:notice] = "Event updated"
        redirect_to @event
      else
        flash[:error] = "Error updating event"
        render :action => 'index'
      end
    else
      redirect_to new_event_reservation_path
    end
  end

  def events_params
    params.require(:event).permit(reservations_attributes: [:seat_id, :seat_col, :seat_row, :user_id])   
  end

end
