class DropVenues < ActiveRecord::Migration
  def up
    drop_table :venues
  end
end
