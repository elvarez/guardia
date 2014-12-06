class RemoveVenueFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :venue_id, :integer
  end
end
