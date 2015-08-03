class CreateCarpenters < ActiveRecord::Migration
  def change
    create_table :carpenters do |t|
      t.string :name
      t.string :company
      t.string :email
      t.integer :phone_number
      t.integer :zipcode
    end
  end
end
