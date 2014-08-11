class AddUserIdToStatuses < ActiveRecord::Migration
  def change
  	# add column on statuses on table called user_id that's an integer
  	add_column :statuses, :user_id, :integer
  	add_index :statuses, :user_id
  	remove_column :statuses, :name
  end
end
