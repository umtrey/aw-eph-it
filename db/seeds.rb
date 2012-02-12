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
  Ingredient.destroy_all
  Rule.destroy_all
  

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
    {:name => "Bullshit",             :source_id => 1, :complexity => 1, :players => 8,   :locations => [bar      ],  :rowdiness => 3,                                                    :fulldescription => "Players: 1 - No limit. Bullshit is a pretty straightforward card game that can really get people going.Sitting in a circle, deal out the entire deck to all players.  The object of the game is to get rid of all your cards. The person to the left of the dealer goes first.Starting with aces, the first player lays face down the number of aces they have.  The player states the number of cards s/he just laid down.Any player can now call \"Bullshit\" if they think the first player is lying. They could have laid down cards other than aces, or tried to sneak in an extra card, whatever. If someone thinks that they're bluffing, they can call it. If the bullshit caller is right, and the player was lying, then that player must drink and pick up their cards again. However, if they were wrong, and the player wasn't lying about the cards they laid down, the bullshit caller must drink, AND pick up the cards that the other player laid down initially.As it goes around the circle, the card type changes with each player - Aces, then Kings, Queens, Jacks, Tens, Nines, etc., starting over at Aces once the two's have been played. The first person to ditch all their cards wins." },
    {:name => "Circle of Death", :source_id => 1, :complexity => 5, :players => 10, :locations => [home], :ingredients => [deck_of_cards], :rowdiness => 2, :shortdescription => "Go in a circle, drinking for the cards you pull.", :players => 2, :fulldescription => "All you need is a deck of cards, a cup and a ton of beer (or drink of choice). Lay all the cards out, face down in a circle, with the cup in the middle.  Start with one person drawing a card out of the deck, and continue pulling until the fourth king has been pulled or all the cards are gone, your choice.  The person must do something corresponding to the card they pulled as follows: 1-6 - If it\'s red, you must drink.  If it\'s black, give out that many drinks times two (ie. a black 4, pass out 8 to whoever you want.) - Ladies drink8 - Gentlemen drink9 - Ryhme:  pick a word and start going around the circle ryhming with it.  The first to pause, repeat a word or say something that doesn\'t rhyme must drink.10 - Ahead: the person to your left must drink.Jack - Back:  the person to your right must drink. Queen - Category:  pick something general like beer types or condom types, and start going around the circle, same rules as rhyming. The first to pause, repeat or screw up must drink.King -  The first three people to pull kings may pour as much beer into the cup in the middle as he or she wants.  The person to pull the forth king must drink everything in the cup.Ace - Waterfall:  whoever pulls the card designates which way the waterfall is going (to the right or left).  Everyone starts drinking at the same time, when the person who pulls the card stops, whichever way the waterfall is going you must stop drinking in that order (i.e. if the waterfall is going to the left, when the person who pulled the card stops, the person on their left may stop and then the person on their left may stop, etc.) This game was submitted by one of our sexy readers, Liz!" },
    {:name => "Flip Cup", :shortdescription => "Flip cups in a race to the drunken finish.", :fulldescription => ":players => 1Flip cup (sometimes called Cups) is a team drinking game.   Two teams with an equal number of players stand on opposite sides of a table, facing one another. In front of each teammate is a plastic cup filled with a set amount of beer.   At the start, the first member of each team drinks their beverage.  The empty cup is placed face up at the edge of the table, and the player who drank it attempts to flip the cup, by flicking or lifting the bottom until it flips and lands face down on the table, sitting on its mouth.   If player is unsuccessful, the cup is reset and re-flipped.   Only after the first teammate is done flipping successfully can the next person proceed. Whichever team finishes drinking and flipping all its cups first wins.  When flipping, a player cannot use two hands or \"guide\" the cup into the downward position. It must be a quick, one-touch motion.", :players => 1, :source_id => 1, :complexity => 1, :rowdiness => 3, :ingredients => [red_solo_cups], :locations => [home] },
    {:name => "Flip, Sip or Strip", :shortdescription => "Lose your clothes and your sobriety, all in one game.", :fulldescription => ":players => 3 - No limit The game is best with 5 or more people but can be played with as little as 3. The rules are simple. Flip a coin and while it is in the air, call heads or tails. If you guess right, pass the coin to your right. If you guess wrong, pass the coin to your left and either take one article of clothing off (anything that is a pair counts as one item) or take a drink.   If you guess right, you can choose to flip again.  Another successful guess lets you pass the coin to anyone of your choosing.  A wrong guess has normal consequences. If you guess right three times in a row, you may retrieve an article of clothing and put it back on.  The coin is then passed to your right.   Lousy tosses must be re-tossed.  Coins need not be caught in the air - if they aren\'t, it is played as it lands.  If they are caught, do not slap the coin onto the back of your hand - play it as it lands in your hand. ", :players => 5, :source_id => 1, :complexity => 3, :rowdiness => 3, :ingredients => [coins], :locations => [home] },
    {:name => "Fuzzy Duck", :shortdescription => "Mix your words and your drinks in this fun group game", :fulldescription => "Everyone sits in a circle or around a table.  One person begins by saying \"Fuzzy Duck\". The person to their left then says \"Fuzzy Duck\" again, and it continues around the circle. Alternately, someone can say \"Does he?\".  If someone says this, the game direction is reversed and the person to his right has to say \"Ducky Fuzz\".  This continues around until someone says \"Does he?\" again, at which point the direction reverses again and the phrase changes back to \"Fuzzy Duck\", and so on. The point is to go as fast as possible.  Any person who pauses must drink, and anyone who gets it wrong or mispronounces it also must drink. ", :players => 6, :source_id => 1, :complexity => 1, :rowdiness => 1, :locations => [home, bar]},
    {:name => "Quarters", :shortdescription => "Race around a table, trying to make quarters in a cup before you're passed.", :fulldescription => "Quarters is perhaps the original drinking game, and can be played anywhere there is alcohol. Players sit around a table armed with a quarter.  A cup (empty or full of alcohol, depending on your preference) is placed in the middle of the table, at least 10 inches away from all players.  If the table is not big enough, just move the cup when it\'s a new player\'s turn.  The players must bounce a quarter off the table and into the cup, in any way possible using only the quarter, the table and the cup.  If successful, the player makes another player drink, and gets to try again.  (If you\'re using a full cup, the assigned player must drink the whole cup and retrieve the quarter.)  If the player missed the cup, the player to their left is passed the quarter and they get to toss.  Some optional rules:  If the quarter bounces off the rim, a re-toss is allowed.  If the rim is struck three times in a row though, the player must drink. Also,  if the player misses they can call \"Double!\".  They toss again, and if successful, they assign a player to chug their entire drink.  If they miss though, the player must chug his drink. ", :players => 6, :source_id => 8, :complexity => 2, :rowdiness => 2, :locations => [home, bar], :ingredients => [coins] }
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