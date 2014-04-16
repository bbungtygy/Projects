class AddPaymentToShop < ActiveRecord::Migration
  def change
    add_column :shops, :do_card_pay, :boolean
    add_column :shops, :is_pre_pay, :boolean
    add_column :shops, :is_coupon, :boolean
  end
end
