class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["place_id"]})
    # render contacts/show view with details about Contact
  end

  def new
    @place = Place.find_by({"id" => params["place_id"]})
  end

  def create
    @entry = Entry.new
    # assign user-entered form data to Entry's columns
    @entry["title"] = params["activity_name"]
    @entry["posted_on"] = params["activity_date"]
    @entry["description"] = params["activity_description"]

    # assign relationship between Entries and Places
    @entry["place_id"] = params["place_id"]

    # save Contact row
    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
  end

end
