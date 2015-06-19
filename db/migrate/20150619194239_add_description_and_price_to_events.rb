class AddDescriptionAndPriceToEvents < ActiveRecord::Migration
  def change
    add_column :events, :price, :integer
    add_column :events, :description, :text
  end
end
