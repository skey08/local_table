class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :type
      t.integer :price
      t.string :photo_url
    end
  end
end
