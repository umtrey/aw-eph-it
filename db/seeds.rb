# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

  Location.destroy_all
  Game.destroy_all
  Gamelocation.destroy_all

  location = Location.create(:name => "home")
  location2 = Location.create(:name => "bar")
  
  Game.create([
    {:name => "Beer Pong", :players => 2, :locations => [location           ]},
    {:name => "Asshole",   :players => 4, :locations => [location, location2]},
    {:name => "Beirut",    :players => 4, :locations => [location2          ]},
    {:name => "Anchorman", :players => 8, :locations => [location2          ], :rowdiness => 1},
    {:name => "Flip Cup", :players => 12, :locations => [location, location2], :rowdiness => 2},
    {:name => "Quarters", :players => 8, :locations => [location2           ], :rowdiness => 3}
    ])

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