class CreateFocals < ActiveRecord::Migration
  def self.up
    create_table :focals do |t|
      t.references :user
      t.references :masterpiece
      t.string :type
      t.string :cx
      t.string :cy
      t.string :radius
      t.string :color
      t.string :image_uid
      t.string :top
      t.string :left
      t.string :height
      t.string :width
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :focals
  end
end
