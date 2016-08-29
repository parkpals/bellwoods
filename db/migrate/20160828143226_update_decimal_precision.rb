class UpdateDecimalPrecision < ActiveRecord::Migration
  def change
  	change_column :invites, :latitude, :decimal, :precision => 20, :scale => 15
  	change_column :invites, :longitude, :decimal, :precision => 20, :scale => 15
  end
end
