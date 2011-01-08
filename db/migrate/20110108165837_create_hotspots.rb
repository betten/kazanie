class CreateHotspots < ActiveRecord::Migration
  def self.up
    create_table :hotspots do |t|
      t.integer :work_id
      t.integer :user_id

      t.string :cx
      t.string :cy
      t.string :radius
      t.string :image_uid
      t.string :title
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :hotspots
  end
end
