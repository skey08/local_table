class CreateCarpenters < ActiveRecord::Migration
  def change
    create_table :carpenters do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone_number
      t.string :zipcode
      # t.integer :user_id
    end
  end
end
