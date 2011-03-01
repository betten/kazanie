class AddPositionToFocals < ActiveRecord::Migration
  def self.up
    add_column :focals, :position, :integer
  end

  def self.down
    remove_column :focals, :position
  end
end
