class ChangeDateAgain < ActiveRecord::Migration
  def change
    change_column :events, :time, :date
  end
end
