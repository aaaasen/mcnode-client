class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players, {:id => false} do |t|
      t.string :username
      t.datetime :last_login
      t.boolean :online
      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
