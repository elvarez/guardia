class AddOrderIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :order_id, :integer, null: false, default: 0
  end
end
