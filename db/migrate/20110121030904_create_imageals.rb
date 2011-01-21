class CreateImageals < ActiveRecord::Migration
  def self.up
    create_table :imageals do |t|
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
    drop_table :imageals
  end
end
