class CreateFocals < ActiveRecord::Migration
  def self.up
    create_table :focals do |t|
      t.string :title
      t.text :text
      t.references :masterpiece
      t.string :image_uid
      t.string :height
      t.string :width
      t.string :x
      t.string :y

      t.timestamps
    end
  end

  def self.down
    drop_table :focals
  end
end
