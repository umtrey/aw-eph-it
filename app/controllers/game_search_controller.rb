class GameSearchController < ApplicationController
  def index
    @submission = Submission.new
    @locations = Location.all
    @ingredients = Ingredient.all
    @ings = []
  end

  def query
    def self.find_by_criteria(params)
      query = where("id IS NOT null") # A little odd but not sure how to get an ActiveRecord::Relation that returns "all"
      query = query.where("location = ?", params[:location]) if params[:location].present?
      query = query.where("rowdiness = ?", params[:rowdiness]) if params[:rowdiness].present?
      query
    end
  end

  def list
    @games = Game.find_by_criteria(params)
    
  end

end
