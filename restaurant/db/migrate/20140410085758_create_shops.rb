class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :phone_number
      t.string :operate_period
      t.string :closing

      t.boolean :is_selfservice
      t.boolean :is_child_room
      t.boolean :is_franchise

      t.binary :exterior
      t.binary :interior
      t.binary :table_cleaness
      t.binary :noise_level

      t.timestamps
    end
  end
end
