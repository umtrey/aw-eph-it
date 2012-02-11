class GameSearchController < ApplicationController
  def index
    @submission = Submission.new
    @locations = Location.all
    @ingredients = Ingredient.all
  end

  def query
  end

  def list
  end

end
