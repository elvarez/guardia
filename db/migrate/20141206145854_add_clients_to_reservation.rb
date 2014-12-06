class AddClientsToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :client_id, :integer
  end
end
