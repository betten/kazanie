class CreateTextals < ActiveRecord::Migration
  def self.up
    create_table :textals do |t|
      t.string :top
      t.string :left
      t.string :height
      t.string :width
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :textals
  end
end
