class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :shop_id

      t.string :commenter
      t.text :content

      t.timestamps
    end
  end
end
