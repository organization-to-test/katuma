class CreateWaitingUsers < ActiveRecord::Migration
  def change
    create_table :waiting_users do |t|
      t.integer :user_id, :null => false
      t.integer :waiting_list_id, :null => false

      t.timestamps
    end
  end
end
