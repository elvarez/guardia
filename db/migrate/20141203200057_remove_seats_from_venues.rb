class RemoveSeatsFromVenues < ActiveRecord::Migration
  def change
    remove_column :venues, :number_of_seats
  end
end
