class Game < ActiveRecord::Base
  
  has_many :gamelocations
  has_many :locations,              :through => :gamelocations
  has_many :gameingredients
  has_many :ingredients,            :through => :gameingredients
  belongs_to :source
  
  def self.find_by_criteria(params)
    query = joins(:locations).where("locations.id = ?", params[:location_id])
    query = query.where("rowdiness = ?", params[:rowdiness])
    query
    # raise query.inspect
  end
  
  
end
