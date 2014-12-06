class AddEventToSeats < ActiveRecord::Migration
  def change
    add_column :seats, :event_id, :integer
  end
end
