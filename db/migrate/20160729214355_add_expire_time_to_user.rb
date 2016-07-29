class AddExpireTimeToUser < ActiveRecord::Migration
  def change
    add_column :invites, :expire_time, :float
  end
end
