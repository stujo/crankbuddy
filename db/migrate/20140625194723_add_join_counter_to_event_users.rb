class AddJoinCounterToEventUsers < ActiveRecord::Migration
  def change
    add_column :event_users, :join_counter, :integer
  end
end
