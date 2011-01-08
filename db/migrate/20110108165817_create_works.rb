class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.integer :project_id
      t.integer :user_id
      
      t.string :title
      t.string :image_uid
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
