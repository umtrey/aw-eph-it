class CreateRules < ActiveRecord::Migration
  def self.up
    create_table :rules do |t|
      t.integer :ingredient_id
      t.text :explanation

      t.timestamps
    end
  end

  def self.down
    drop_table :rules
  end
end
