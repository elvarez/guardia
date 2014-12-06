class DropSeats < ActiveRecord::Migration
  def up
    drop_table :seats
  end
    
end
