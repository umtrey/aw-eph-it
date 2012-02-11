class CreateGamelocations < ActiveRecord::Migration
  def self.up
    create_table :gamelocations do |t|
      t.integer :game_id
      t.integer :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :gamelocations
  end
end
