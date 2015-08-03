class AddUsersToCarpenters < ActiveRecord::Migration
  def change
    add_column :carpenters, :user_id, :integer
  end
end
