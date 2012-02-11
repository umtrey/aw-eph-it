class Game < ActiveRecord::Base
  
  has_many :gamelocations
  has_many :locations,              :through => :gamelocations
  has_many :gameingredients
  has_many :ingredients,            :through => :gameingredients
  belongs_to :source
  
  
end
