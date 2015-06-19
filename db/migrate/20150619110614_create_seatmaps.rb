class CreateSeatmaps < ActiveRecord::Migration
  def change
    create_table :seatmaps do |t|
      t.string :name
      t.text :map

      t.timestamps
    end
  end
end
