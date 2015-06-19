class ChangeTimeToDate < ActiveRecord::Migration
  def change
    change_column :events, :time, :datetime
  end
end
