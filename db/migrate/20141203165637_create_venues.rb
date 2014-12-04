class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :number_of_seats
      t.timestamps
    end
  end
end
