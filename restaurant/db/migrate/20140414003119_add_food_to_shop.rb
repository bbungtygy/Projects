class AddFoodToShop < ActiveRecord::Migration
  def change
    add_column :shops, :queue_waited, :integer
    add_column :shops, :order_waited, :integer
    add_column :shops, :is_rice_free, :boolean
    add_column :shops, :is_takeout, :boolean
  end
end
