class Ingredient < ActiveRecord::Base
  
  has_many :gameingredients
  has_many :games,              :through => :gameingredients
  
end
