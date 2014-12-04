class AddSeatsToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :seat_id, :integer
  end
end
