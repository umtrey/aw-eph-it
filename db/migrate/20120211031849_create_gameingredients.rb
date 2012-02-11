class CreateGameingredients < ActiveRecord::Migration
  def self.up
    create_table :gameingredients do |t|
      t.integer :game_id
      t.integer :ingredient_id

      t.timestamps
    end
  end

  def self.down
    drop_table :gameingredients
  end
end
