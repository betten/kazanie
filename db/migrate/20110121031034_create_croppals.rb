class CreateCroppals < ActiveRecord::Migration
  def self.up
    create_table :croppals do |t|
      t.string :ctop
      t.string :cleft
      t.string :cheight
      t.string :cwidth
      t.string :top
      t.string :left
      t.string :height
      t.string :width
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :croppals
  end
end
