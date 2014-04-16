class AddMenuToShop < ActiveRecord::Migration
  def change
    add_column :shops, :is_dessert, :boolean
    add_column :shops, :do_drink, :boolean
    add_column :shops, :is_special_menu, :boolean
  end
end
