class ChangeDecimalPrecision < ActiveRecord::Migration
  def self.up
    change_column :invites, :latitude, :decimal, :precision => 15, :scale => 10
    change_column :invites, :longitude, :decimal, :precision => 15, :scale => 10
  end
end
