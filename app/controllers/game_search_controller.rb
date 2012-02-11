class GameSearchController < ApplicationController
  def index
    @submission = Submission.new
    @locations = Location.all
    @ingredients = Ingredient.all
    @ings = []
  end

  def query
  end

  def list
    @games = Game.find_by_criteria(params)
    # raise params.inspect
  end

end
