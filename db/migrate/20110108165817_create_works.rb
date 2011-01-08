class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.integer :project_id
      t.integer :user_id
      
      t.string :image_uid

      t.string :title
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
