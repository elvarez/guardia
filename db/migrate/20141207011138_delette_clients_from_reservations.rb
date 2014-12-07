class DeletteClientsFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :client_id
  end
end
