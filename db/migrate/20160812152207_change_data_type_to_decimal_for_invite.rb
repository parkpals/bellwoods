class ChangeDataTypeToDecimalForInvite < ActiveRecord::Migration
  def self.up
    change_table :invites do |t|
      t.change :latitude, :decimal
    end
    change_table :invites do |t|
      t.change :longitude, :decimal
    end
  end
  def self.down
    change_table :invites do |t|
      t.change :latitude, :float
    end
    change_table :invites do |t|
      t.change :longitude, :float
    end
  end
end
