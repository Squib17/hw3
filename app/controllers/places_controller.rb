class PlacesController < ApplicationController
  def index
    @places = ["Mexico City", "Charleston", "Beijing", "Amsterdam"]
    # render :template => "places/index"
    # @places = place.all
  end

  def show
    @company = companies.find_by
end
