class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :content
      t.references :player
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
