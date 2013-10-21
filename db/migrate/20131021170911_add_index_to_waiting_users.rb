class AddIndexToWaitingUsers < ActiveRecord::Migration
  def change
    add_index :waiting_users, [:user_id, :waiting_list_id]
  end
end
