class PlacesController < ApplicationController
  def index
    #@places = ["Mexico City", "Charleston", "Beijing", "Amsterdam"]
    # render :template => "places/index"
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    #Find entries of that place
    @entries = Entry.where({"place_id" => @place["id"]})
  end

  def new
    # render new view with new Place form
  end


  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end

end
