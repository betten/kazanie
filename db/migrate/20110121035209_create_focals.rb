class CreateFocals < ActiveRecord::Migration
  def self.up
    create_table :focals do |t|
      t.reference :user
      t.reference :masterpiece
      t.string :cx
      t.string :cy
      t.string :radius
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :focals
  end
end
