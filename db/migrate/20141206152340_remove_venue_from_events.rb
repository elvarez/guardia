class RemoveVenueFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :venue_id, :integer
  end
end
