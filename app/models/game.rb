class Game < ActiveRecord::Base
  
  has_many :gamelocations
  has_many :locations,              :through => :gamelocations
  has_many :gameingredients
  has_many :ingredients,            :through => :gameingredients
  belongs_to :source
  
  def self.find_by_criteria(params)
    
    eligible_games_query = joins(:locations).where("locations.id = ?", params[:location_id])
     eligible_games_query = eligible_games_query.where("rowdiness = ?", params[:rowdiness])
   
      bad_ingredients_query = joins(:ingredients)
      bad_ingredients_query = self.get_bad_games_list(bad_ingredients_query, params)

    eligible_games_query - bad_ingredients_query
  end
  
  def self.get_bad_games_list(query, params)
    ingredients = Ingredient.all
    unless params[:ingredients].nil?
      
      params[:ingredients].each do |mying| 
        ingredients.delete(Ingredient.find(mying))
      end
    end
    query.where(:ingredients => {:id => ingredients}).group("games.name","games.id","games.shortdescription","games.fulldescription","games.players","games.source_id","games.complexity","games.rowdiness","games.created_at","games.updated_at")
  end
  
  
end
