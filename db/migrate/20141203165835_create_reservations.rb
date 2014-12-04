class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :event_id
      t.integer :venue_id
      t.integer :client_id
      t.timestamps
    end
  end
end
