class RemoveMaxseats < ActiveRecord::Migration
  def change
    remove_column :events, :max_seats
  end
end
