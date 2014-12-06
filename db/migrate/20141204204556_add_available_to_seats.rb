class AddAvailableToSeats < ActiveRecord::Migration
  def change
    add_column :seats, :available, :boolean
  end
end
