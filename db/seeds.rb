# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


  location = Location.create(:name => "home")
  
  Game.create(:name => "Beer Pong", :players => 2, :locations => [location])
  

    # 
    # 
    # 
    # create_table "games", :force => true do |t|
    #   t.string   "name"
    #   t.string   "shortdescription"
    #   t.text     "fulldescription"
    #   t.integer  "players"
    #   t.integer  "source_id"
    #   t.integer  "complexity"
    #   t.integer  "rowdiness"
    #   t.datetime "created_at"
    #   t.datetime "updated_at"
    #   
    #   
    #   create_table "locations", :force => true do |t|
    #     t.string   "name"
    #     t.datetime "created_at"
    #     t.datetime "updated_at"
    #   end