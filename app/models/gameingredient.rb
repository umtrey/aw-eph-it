class Gameingredient < ActiveRecord::Base
  
  belongs_to :game
  belongs_to :ingredient
  
end
