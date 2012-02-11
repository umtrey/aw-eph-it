class Gamelocation < ActiveRecord::Base
  
  belongs_to :game
  belongs_to :location
end
