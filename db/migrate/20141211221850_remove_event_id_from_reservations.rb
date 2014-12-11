class RemoveEventIdFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :event_id
  end
end
