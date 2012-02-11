class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :name
      t.string :shortdescription
      t.text :fulldescription
      t.integer :players
      t.integer :source_id
      t.integer :complexity
      t.integer :rowdiness

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
