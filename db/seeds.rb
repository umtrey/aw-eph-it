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
  
  ping_pong_ball  = Ingredient.create(:name => "Ping Pong ball" ) #1
  six_sided_die   = Ingredient.create(:name => "Six sided die"  ) #2
  deck_of_cards   = Ingredient.create(:name => "Deck of Cards"  ) #3
  red_solo_cups   = Ingredient.create(:name => "Cup"  )           #4
  hat             = Ingredient.create(:name => "Hat"            ) #5
  coins           = Ingredient.create(:name => "Coins"          ) #6
  
  Game.create([
    {:name => "21 Monkeys",           :source_id => 1, :complexity => 1, :players => 2,   :locations => [home     ],  :rowdiness => 1,  :ingredients => [ping_pong_ball, red_solo_cups ], :fulldescription => "Players: 1. Play this game at a club, pub or lounge. Players take turns throwing three dice. Any roll of a \"1\" is called a \"monkey\". Whoever throws the first monkey gets to order a drink. Whoever throws the seventh monkey has to taste the drink. Whoever throws the fourteenth monkey has to drink the drink. Whoever throws the twenty-first monkey has to pay for the drink EXCEPT when the player who rolled the fourteenth monkey hasn't finished drinking the drink yet, then he/she has to pay for it himself/herself. This game has also been called 21 Aces."  },
    {:name => "AnimaL",               :source_id => 1, :complexity => 2, :players => 4,   :locations => [home, bar],  :rowdiness => 2,  :ingredients => [deck_of_cards],                  :fulldescription => "Players: 3 - No limit. All players sit in a circle.  The first person starts off by saying the name of an animal. The person to their left has to say the name of another animal that starts with the last letter of the animal the first person said. Animal types can only be used once.  For example, you can't say \"Cat\" and have someone later use \"Alley Cat\".  You could use different species though, like \"Parrot\" and \"Cockatiel\" are both different species of birds. Breeds don't count, a dog is a dog.Here is an example of how it might look: 1st person: \"doG\" 2nd person: \"GopheR\" 3rd person: \"RhinO\" 4th person: \"OwL\" If the player cannot think of an animal or says an animal that was already used, they take a shot and say a new animal. Once a person takes 6 shots, they are out of the game. Last one remaining wins. When a player says an animal that is debatable, take a vote. If not accepted, the player is allowed to say another animal."},
    {:name => "Asshole",              :source_id => 1, :complexity => 3, :players => 4,   :locations => [home, bar],  :rowdiness => 1,  :ingredients => [ping_pong_ball ],                :fulldescription => "Players: 4 - 10. Objective: Get rid of all your cards first.A classic game, Asshole is also known as Bum for those so morally inclined.Aces are high, threes are low.  Two's are wild.The dealer deals out all the cards.  Multiple decks may be necessary. The person left of the dealer goes first, and lays down any card or set of cards of the same value.  (Eg. three 4's or a single 3 perhaps.)  The person to their left must lay down cards of greater value, and the same number of cards. (Eg. If three 8's were laid down, three 9's or greater must be laid down. Four 9's would not be allowed, it has to be 3.)  If they cannot lay down any cards, they pass to the next person.  (You may also choose to pass.) Anyone who passes must drink.The circle continues until no one can play any more cards.  The last person to lay down cards has \"control\" and starts the next round by laying down new cards.  Play continues until everyone is out of cards.After the first round has been played, the first person out is the President.  The second person out is the Vice-President, and the last two people out are the Vice-Asshole and Asshole for the second-last and last person respectively.Once ranks are established and after all the cards have been redealt, the Asshole must give the President his 2 best cards, and the President gives the Asshole his 2 worst cards.  The Vice-President and Vice-Asshole also switch worst and best cards, but only 1 each.  Play begins again with the person left of the dealer.At the end of each round, the Asshole must clear the cards and gather them into a pile.  If anyone else touches the pile of cards during play, they automatically switch ranks with the Asshole.  If the same person remains Asshole for 3 whole rounds, they become subject to the whims of other players and must drink when told. 2's are wild, and will beat any card played, including an Ace.  Once a two is played the cards are cleared and the person playing the 2 has control.  One 2 also beats a pair of anything, two 2's will beat three of anything, three 2's beats 4 of anything, etc..." },
    {:name => "Beer Hunter",          :source_id => 1, :complexity => 5, :players => 12,  :locations => [home, bar],  :rowdiness => 1,                                                    :fulldescription => "Players: 2 - No limit. Several adaptations of this game exist.Blindfold two contestants and sit them across a table from each other.  Take a six-pack of beer and remove them from the rings, place them on the table near the prisoners.  Shake one vigorously, then mix it in with the rest of the beer so that no one knows where the shaken can is. Spectators can now bet on who will be soaked.  Typical bets are to make other people drink. Blindfolds are removed and one player chooses a can from the six on the table.  The referee then spins an empty, whoever the open end points at then takes the beer and holds it under their nostrils and opens the can.If the player hesitates, people must shout \"Mau!\" repeatedly at the player (or some other hated communist dictator).  This is worse than getting soaked by beer.If the player survives, they pick a can and give it to the opposite player. Once someone loses (a.k.a. gets nasally violated by beer), they must also drink every single open can of beer!"},
    {:name => "Beirut (Beer Pong)",   :source_id => 1, :complexity => 1, :players => 8,   :locations => [bar      ],  :rowdiness => 3,                                                    :fulldescription => "Players: 2 or 4. Beer Pong is a drinking game in which players throw a ping-pong ball across a table with the intent of landing the ball in a cup of beer on the other end. The game typically consists of two 2-player teams and multiple cups set up on each side set up in triangle formation, much like bowling pins or billiard balls in their starting positions. The goal of the game is to eliminate the other teams' cups before one's own cups are eliminated. When a ball lands in a cup, that cup is eliminated and the defending team must consume all of the beer inside that cup. The losing team must consume all the beer remaining in the winning team's cups. Throwing the ball can be done with an arc shot, or straight line, or a bounce shot.This is not a game for the casual player.  It is a serious competition, one involving skill, luck, and of course a little booze.  There are leagues dedicated to the fineries of this endeavour.  There are varying rulesets depending on where you play, but one official ruleset is well defined at this site." },
    {:name => "Bullshit",             :source_id => 1, :complexity => 1, :players => 8,   :locations => [bar      ],  :rowdiness => 3,                                                    :fulldescription => "Players: 1 - No limit. Bullshit is a pretty straightforward card game that can really get people going.Sitting in a circle, deal out the entire deck to all players.  The object of the game is to get rid of all your cards. The person to the left of the dealer goes first.Starting with aces, the first player lays face down the number of aces they have.  The player states the number of cards s/he just laid down.Any player can now call \"Bullshit\" if they think the first player is lying. They could have laid down cards other than aces, or tried to sneak in an extra card, whatever. If someone thinks that they're bluffing, they can call it. If the bullshit caller is right, and the player was lying, then that player must drink and pick up their cards again. However, if they were wrong, and the player wasn't lying about the cards they laid down, the bullshit caller must drink, AND pick up the cards that the other player laid down initially.As it goes around the circle, the card type changes with each player - Aces, then Kings, Queens, Jacks, Tens, Nines, etc., starting over at Aces once the two's have been played. The first person to ditch all their cards wins." }
    ])
    
  Source.create([
    {:name => "United States",  :flag => 'us.gif'}, #USA has to have id=1 based on our code. should probably fix this later.
    {:name => "Austria",        :flag => 'at.gif'},
    {:name => "Bolivia",        :flag => 'bo.gif'},
    {:name => "Switzerland",    :flag => 'ch.gif'},
    {:name => "Chile",          :flag => 'cl.gif'},
    {:name => "China",          :flag => 'cn.gif'},
    {:name => "Cuba",           :flag => 'cu.gif'},
    {:name => "Gemany",         :flag => 'de.gif'},
    {:name => "Ecuador",        :flag => 'ec.gif'},
    {:name => "Spain",          :flag => 'es.gif'},
    {:name => "United Kingdom", :flag => 'gb.gif'},
    {:name => "Japan",          :flag => 'jp.gif'},
    {:name => "Mexico",         :flag => 'mx.gif'},
    {:name => "Peru",           :flag => 'pe.gif'},
    {:name => "Russia",         :flag => 'ru.gif'}
    ])
    
    
    # "ingredients"
    #       t.string   "name"
    
    
    
    # "rules"
    #       t.integer  "ingredient_id"
    #       t.text     "explanation"
    
    Rule.create([
      {:ingredient_id => 1, :explanation => "Whenever someone passes a ball to someone else, if it is not caught, both must drink." },
      {:ingredient_id => 1, :explanation => "If a ball hits the floor, everyone must take a drink." },
      {:ingredient_id => 1, :explanation => "If a ball bounces twice on the floor, everyone must finish their drink." },
      {:ingredient_id => 1, :explanation => "Troll rule: If you do not score a point the entire game you become a Troll for the next game. This means you will have to sit underneath the table for the remainder of the next game. Empty cans are encouraged to be thrown at said Trolls." },
      {:ingredient_id => 2, :explanation => "If someone rolls a three or less, everyone must drink." },
      {:ingredient_id => 2, :explanation => "If someone rolls a six, they must drink. " },
      {:ingredient_id => 2, :explanation => "If doubles are rolled, the person rolling must take two drinks." },
      {:ingredient_id => 2, :explanation => "If triples are rolled, everyone must finish their drink." },
      {:ingredient_id => 2, :explanation => "If someone says the word Five or Seven, they must take a drink. Use Wah and DoubleWah instead." },
      {:ingredient_id => 3, :explanation => "If a queen is drawn, everyone must talk in a british accent." },
      {:ingredient_id => 3, :explanation => "If someone draws a face card, all guys must drink." },
      {:ingredient_id => 3, :explanation => "If someone draws a red card, all women must drink. If someone draws a black card, all men must drink." },
      {:ingredient_id => 4, :explanation => "Stealing beer is allowed. If a player steals your beer and finishes the beer, you must finish their drink. This is useful when your beer is full and your opponent's is nearly empty." },
      {:ingredient_id => 4, :explanation => "If someone stacks one cup inside another, they must take a shot." },
      {:ingredient_id => 5, :explanation => "If someone says the word Hat they must take a drink." },
      {:ingredient_id => 5, :explanation => "Everyone must touch their nose before touching the hat. Otherwise, they must take a drink." },
      {:ingredient_id => 6, :explanation => "If someone makes their coin into another players glass the player must finish the drink. " },
      {:ingredient_id => 6, :explanation => "If someone has a foreign coin, everyone else must finish their drink." },
      {:ingredient_id => 6, :explanation => "If someone has a half-dollar coin, everyone must finish their drink." },
      {:ingredient_id => 6, :explanation => "If someone has more than two dollars in change in their pocket (not purse), that person must finish their drink." },
      {:ingredient_id => 6, :explanation => "If someone has 5 or more pennies, they must take a drink for each penny in their possession." }
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