class RemoveProfileIdFromInvites < ActiveRecord::Migration
  def change
    remove_column :invites, :profile_id, :integer
    add_column :invites, :user_id, :integer
  end
end
