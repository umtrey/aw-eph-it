class Location < ActiveRecord::Base
  
  has_many :gamelocations
  has_many :games,          :through => :gamelocations
end
