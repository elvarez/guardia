class EventsController < ApplicationController

  def new
    @event = Event.new
    authorize @event
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    if @event.destroy
      flash[:notice] = "destruction!"
      redirect_to events_path
    else
      flash[:notice] = "error destroying"
      render 'index'
    end
  end
  
  def create
    @event = Event.new(new_params)
    authorize @event
    if @event.save
      flash[:notice] = "created!"
      redirect_to @event
    else
      flash[:notice] = "error creating"
      render 'index'
    end
  end
  
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
      authorize @event
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

  def new_params
    params.require(:event).permit(:name, :time)
  end
end
