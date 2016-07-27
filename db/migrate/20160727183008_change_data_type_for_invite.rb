class ChangeDataTypeForInvite < ActiveRecord::Migration
  def self.up
    change_table :invites do |t|
      t.change :latitude, :float
    end
    change_table :invites do |t|
      t.change :longitude, :float
    end
  end
  def self.down
    change_table :invites do |t|
      t.change :latitude, :integer
    end
    change_table :invites do |t|
      t.change :longitude, :integer
    end
  end
end
