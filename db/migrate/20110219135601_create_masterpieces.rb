class CreateMasterpieces < ActiveRecord::Migration
  def self.up
    create_table :masterpieces do |t|
      t.string :title
      t.text :text
      t.string :image_uid
      t.string :mini_image_uid
      t.string :height
      t.string :width

      t.timestamps
    end
  end

  def self.down
    drop_table :masterpieces
  end
end
