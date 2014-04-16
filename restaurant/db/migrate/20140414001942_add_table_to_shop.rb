class AddTableToShop < ActiveRecord::Migration
  def change
    add_column :shops, :table_count, :integer
    add_column :shops, :alone_table_count, :integer
    add_column :shops, :couple_table_count, :integer
    add_column :shops, :room_count, :integer
    add_column :shops, :is_off_shoes, :boolean
  end
end
