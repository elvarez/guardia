class OrdersController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @order = current_user.orders.build
    @order.reservations.build
    @allres = @event.reservations
  end

  def create
    @event = Event.find(params[:event_id])
    @order = current_user.orders.build(order_params)
    @order.event = @event
    
    if @order.save
      flash[:notice] = "Reserved!"
      redirect_to '/'
    else
      flash[:error] = "Not there yet"
      redirect_to '/'
    end
  end

  private

  def order_params
    params.require(:order).permit()
  end

end
