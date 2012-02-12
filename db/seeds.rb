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

  home  = Location.create(:name => "home")
  bar = Location.create(:name => "bar" )
  
  ping_pong_ball  = Ingredient.create(:name => "Ping Pong ball" )
  deck_of_cards   = Ingredient.create(:name => "Deck of Cards"  )
  six_sided_die   = Ingredient.create(:name => "Six sided die"  )
  hat             = Ingredient.create(:name => "hat"            )
  red_solo_cups   = Ingredient.create(:name => "Red solo cups"  )
  
  
  Game.create([
    {:name => "Beer Pong", :source_id => 1, :complexity => 1, :players => 2,   :locations => [home     ],  :rowdiness => 1,  :ingredients => [ping_pong_ball, red_solo_cups ]  },
    {:name => "Asshole",   :source_id => 2, :complexity => 2, :players => 4,   :locations => [home, bar],  :rowdiness => 2,  :ingredients => [deck_of_cards] },
    {:name => "Beirut",    :source_id => 2, :complexity => 3, :players => 4,   :locations => [home, bar],  :rowdiness => 1,  :ingredients => [ping_pong_ball ] },
    {:name => "Anchorman", :source_id => 3, :complexity => 4, :players => 8,   :locations => [home, bar],  :rowdiness => 1,  :ingredients => [hat, deck_of_cards]  },
    {:name => "Flip Cup",  :source_id => 3, :complexity => 5, :players => 12,  :locations => [home, bar],  :rowdiness => 1 },
    {:name => "Quarters",  :source_id => 1, :complexity => 1, :players => 8,   :locations => [bar      ],  :rowdiness => 3 }
    ])
    
  Source.create([
    {:name => "United States", :flag => 'us.gif'},
    {:name => "Austria", :flag => 'at.gif'},
    {:name => "Bolivia", :flag => 'bo.gif'},
    {:name => "Switzerland", :flag => 'chile.gif'},
    {:name => "Chile", :flag => 'cl.gif'},
    {:name => "China", :flag => 'cn.gif'},
    {:name => "Cuba", :flag => 'cu.gif'},
    {:name => "Gemany", :flag => 'de.gif'},
    {:name => "Ecuador", :flag => 'ec.gif'},
    {:name => "Spain", :flag => 'es.gif'},
    {:name => "United Kingdom", :flag => 'gb.gif'},
    {:name => "Japan", :flag => 'jp.gif'},
    {:name => "Mexico", :flag => 'mx.gif'},
    {:name => "Peru", :flag => 'pe.gif'},
    {:name => "Russia", :flag => 'ru.gif'}
    ])

    # create_table "gameingredients", :force => true do |t|
    #       t.integer  "game_id"
    #       t.integer  "ingredient_id"
    #       t.datetime "created_at"
    #       t.datetime "updated_at"
    #     end
    # 
    #     create_table "gamelocations", :force => true do |t|
    #       t.integer  "game_id"
    #       t.integer  "location_id"
    #       t.datetime "created_at"
    #       t.datetime "updated_at"
    #     end
    # 
    #     create_table "games", :force => true do |t|
    #       t.string   "name"
    #       t.string   "shortdescription"
    #       t.text     "fulldescription"
    #       t.integer  "players"
    #       t.integer  "source_id"
    #       t.integer  "complexity"
    #       t.integer  "rowdiness"
    #       t.datetime "created_at"
    #       t.datetime "updated_at"
    #     end
    # 
    #     create_table "ingredients", :force => true do |t|
    #       t.string   "name"
    #       t.datetime "created_at"
    #       t.datetime "updated_at"
    #     end
    # 
    #     create_table "locations", :force => true do |t|
    #       t.string   "name"
    #       t.datetime "created_at"
    #       t.datetime "updated_at"
    #     end
    # 
    #     create_table "rules", :force => true do |t|
    #       t.integer  "ingredient_id"
    #       t.text     "explanation"
    #       t.datetime "created_at"
    #       t.datetime "updated_at"
    #     end
    # 
    #     create_table "sources", :force => true do |t|
    #       t.string   "name"
    #       t.string   "flag"
    #       t.datetime "created_at"
    #       t.datetime "updated_at"
    #     end