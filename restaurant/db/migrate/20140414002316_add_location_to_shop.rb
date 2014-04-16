class AddLocationToShop < ActiveRecord::Migration
  def change
    add_column :shops, :address, :string
    add_column :shops, :public_transport_info, :text
    add_column :shops, :surrounding_info, :text
    add_column :shops, :do_parking, :boolean
  end
end
