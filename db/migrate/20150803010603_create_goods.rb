class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :type
      t.integer :price
      t.string :photo_url
      t.references :carpenter, index: true, foreign_key: true
    end
  end
end
