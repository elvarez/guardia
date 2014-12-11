class AddEventIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :event_id, :integer, null: false, default: 0
  end
end
