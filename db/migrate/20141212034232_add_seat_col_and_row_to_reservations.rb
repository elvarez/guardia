class AddSeatColAndRowToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :seat_col, :integer
    add_column :reservations, :seat_row, :integer
  end
end
