class AddPositionToMasterpieces < ActiveRecord::Migration
  def self.up
    add_column :masterpieces, :position, :integer
  end

  def self.down
    remove_column :masterpieces, :position
  end
end
