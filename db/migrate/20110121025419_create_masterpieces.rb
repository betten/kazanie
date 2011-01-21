class CreateMasterpieces < ActiveRecord::Migration
  def self.up
    create_table :masterpieces do |t|
      t.references :user
      t.string :image_uid
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :masterpieces
  end
end
